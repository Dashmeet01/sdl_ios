#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLFileManager.h"
#import "SDLListFiles.h"
#import "SDLNotificationConstants.h"

@interface TestConnectionManager : NSObject<SDLConnectionManager>

@property (copy, nonatomic, readonly) NSMutableArray<__kindof SDLRPCRequest *> *receivedRequests;

@end

@implementation TestConnectionManager

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _receivedRequests = [NSMutableArray<__kindof SDLRPCRequest *> array];
    
    return self;
}

- (void)sendRequest:(__kindof SDLRPCRequest *)request withCompletionHandler:(SDLRequestCompletionHandler)block {
    [self.receivedRequests addObject:request];
}

@end


QuickSpecBegin(SDLFileManagerSpec)

describe(@"SDLFileManager", ^{
    __block TestConnectionManager *testConnectionManager = nil;
    __block SDLFileManager *testFileManager = nil;
    
    beforeEach(^{
        testConnectionManager = [[TestConnectionManager alloc] init];
        testFileManager = [[SDLFileManager alloc] initWithConnectionManager:testConnectionManager];
    });
    
    describe(@"before receiving a connect notification", ^{
        it(@"should be in the not connected state", ^{
            expect(@(testFileManager.state)).to(equal(@(SDLFileManagerStateNotConnected)));
        });
        
        it(@"bytesAvailable should be 0", ^{
            expect(@(testFileManager.bytesAvailable)).to(equal(@0));
        });
        
        it(@"remoteFileNames should be empty", ^{
            expect(testFileManager.remoteFileNames).to(beEmpty());
        });
        
        it(@"allowOverwrite should be false by default", ^{
            expect(@(testFileManager.allowOverwrite)).to(equal(@YES));
        });
    });
    
    describe(@"after receiving a connect notification", ^{
        beforeEach(^{
            [[NSNotificationCenter defaultCenter] postNotificationName:SDLDidConnectNotification object:nil];
        });
        
        it(@"should have sent the connection manager a ListFiles request", ^{
            expect(testConnectionManager.receivedRequests.firstObject).to(beAKindOf([SDLListFiles class]));
        });
        
        describe(@"before receiving a ListFiles response", ^{
            it(@"should be in the waiting state", ^{
                expect(@(testFileManager.state)).to(equal(@(SDLFileManagerStateWaiting)));
            });
            
            xdescribe(@"entering files before a response then receiving the response", ^{
                it(@"should immediately start sending queued files", ^{
                    
                });
            });
        });
    });
});

QuickSpecEnd
