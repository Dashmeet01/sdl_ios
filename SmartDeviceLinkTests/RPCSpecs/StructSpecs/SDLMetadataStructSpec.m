//
//  SDLMetadataStructSpec.m
//  SmartDeviceLink-iOS
//
//  Created by Brett McIsaac on 8/1/17.
//  Copyright © 2017 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLNames.h"
#import "SDLMetadataStruct.h"
#import "SDLTextFieldType.h"

QuickSpecBegin(SDLMetadataStructSpec)

describe(@"Initialization tests", ^{
    it(@"Should get correctly when initialized with a dictionary", ^ {
        NSArray<SDLTextFieldType *> *formatArray = @[[SDLTextFieldType MEDIA_ARTIST], [SDLTextFieldType MEDIA_TITLE]];
        NSMutableDictionary* dict = [@{NAMES_mainField1Type: formatArray,
                                       NAMES_mainField2Type: formatArray,
                                       NAMES_mainField3Type: formatArray,
                                       NAMES_mainField4Type: formatArray} mutableCopy];

        SDLMetadataStruct* testStruct = [[SDLMetadataStruct alloc] initWithDictionary:dict];

        expect(testStruct.mainField1).to(equal(formatArray));
        expect(testStruct.mainField2).to(equal(formatArray));
        expect(testStruct.mainField3).to(equal(formatArray));
        expect(testStruct.mainField4).to(equal(formatArray));
    });

    it(@"Should return nil if not set", ^ {
        SDLMetadataStruct* testStruct = [[SDLMetadataStruct alloc] init];

        expect(testStruct.mainField1).to(beNil());
        expect(testStruct.mainField2).to(beNil());
        expect(testStruct.mainField3).to(beNil());
        expect(testStruct.mainField4).to(beNil());
    });

    it(@"Should get correctly when initialized with Arrays", ^ {
        NSArray<SDLTextFieldType *> *formatArray = @[[SDLTextFieldType MEDIA_ARTIST], [SDLTextFieldType MEDIA_TITLE]];
        SDLMetadataStruct* testStruct = [[SDLMetadataStruct alloc] initWithTextFieldTypes:formatArray mainField2:formatArray mainField3:formatArray mainField4:formatArray];

        expect(testStruct.mainField1).to(equal(formatArray));
        expect(testStruct.mainField2).to(equal(formatArray));
        expect(testStruct.mainField3).to(equal(formatArray));
        expect(testStruct.mainField4).to(equal(formatArray));
    });
});

QuickSpecEnd