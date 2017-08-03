//  SDLShow.m
//


#import "SDLShow.h"

#import "NSMutableDictionary+Store.h"
#import "SDLImage.h"
#import "SDLMetadataStruct.h"
#import "SDLNames.h"
#import "SDLSoftButton.h"
#import "SDLTextFieldType.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLShow

- (instancetype)init {
    if (self = [super initWithName:SDLNameShow]) {
    }
    return self;
}

- (instancetype)initWithMainField1:(nullable NSString *)mainField1 mainField2:(nullable NSString *)mainField2 alignment:(nullable SDLTextAlignment)alignment {
    return [self initWithMainField1:mainField1 mainField2:mainField2 mainField3:nil mainField4:nil alignment:alignment];
}

- (instancetype)initWithMainField1:(nullable NSString *)mainField1 mainField1Type:(nullable SDLTextFieldType)mainField1Type mainField2:(nullable NSString *)mainField2 mainField2Type:(nullable SDLTextFieldType)mainField2Type alignment:(nullable SDLTextAlignment)alignment {
    self = [self init];
    if (!self) {
        return nil;
    }

    NSArray<SDLTextFieldType> *field1Array = @[mainField1Type];
    NSArray<SDLTextFieldType> *field2Array = @[mainField2Type];
    SDLMetadataStruct* fieldsStruct = [[SDLMetadataStruct alloc] initWithTextFieldTypes:field1Array mainField2:field2Array];

    self.mainField1 = mainField1;
    self.mainField2 = mainField2;
    self.alignment = alignment;
    self.textFieldMetadata = fieldsStruct;

    return self;
}

- (instancetype)initWithMainField1:(nullable NSString *)mainField1 mainField2:(nullable NSString *)mainField2 mainField3:(nullable NSString *)mainField3 mainField4:(nullable NSString *)mainField4 alignment:(nullable SDLTextAlignment)alignment {
    return [self initWithMainField1:mainField1 mainField2:mainField2 mainField3:mainField3 mainField4:mainField4 alignment:alignment statusBar:nil mediaClock:nil mediaTrack:nil graphic:nil softButtons:nil customPresets:nil];
}

- (instancetype)initWithMainField1:(nullable NSString *)mainField1 mainField1Type:(nullable SDLTextFieldType)mainField1Type mainField2:(nullable NSString *)mainField2 mainField2Type:(nullable SDLTextFieldType)mainField2Type mainField3:(nullable NSString *)mainField3 mainField3Type:(nullable SDLTextFieldType)mainField3Type mainField4:(nullable NSString *)mainField4 mainField4Type:(nullable SDLTextFieldType)mainField4Type alignment:(nullable SDLTextAlignment)alignment{
    self = [self init];
    if (!self) {
        return nil;
    }

    NSArray<SDLTextFieldType> *field1Array = @[mainField1Type];
    NSArray<SDLTextFieldType> *field2Array = @[mainField2Type];
    NSArray<SDLTextFieldType> *field3Array = @[mainField3Type];
    NSArray<SDLTextFieldType> *field4Array = @[mainField4Type];
    SDLMetadataStruct* fieldsStruct = [[SDLMetadataStruct alloc] initWithTextFieldTypes:field1Array mainField2:field2Array mainField3:field3Array mainField4:field4Array];

    self.mainField1 = mainField1;
    self.mainField2 = mainField2;
    self.mainField3 = mainField3;
    self.mainField4 = mainField4;
    self.alignment = alignment;
    self.textFieldMetadata = fieldsStruct;

    return self;
}

- (instancetype)initWithMainField1:(nullable NSString *)mainField1 mainField2:(nullable NSString *)mainField2 alignment:(nullable SDLTextAlignment)alignment statusBar:(nullable NSString *)statusBar mediaClock:(nullable NSString *)mediaClock mediaTrack:(nullable NSString *)mediaTrack {
    return [self initWithMainField1:mainField1 mainField2:mainField2 mainField3:nil mainField4:nil alignment:alignment statusBar:statusBar mediaClock:mediaClock mediaTrack:mediaTrack graphic:nil softButtons:nil customPresets:nil];
}

- (instancetype)initWithMainField1:(nullable NSString *)mainField1 mainField2:(nullable NSString *)mainField2 mainField3:(nullable NSString *)mainField3 mainField4:(nullable NSString *)mainField4 alignment:(nullable SDLTextAlignment)alignment statusBar:(nullable NSString *)statusBar mediaClock:(nullable NSString *)mediaClock mediaTrack:(nullable NSString *)mediaTrack graphic:(nullable SDLImage *)graphic softButtons:(nullable NSArray<SDLSoftButton *> *)softButtons customPresets:(nullable NSArray<NSString *> *)customPresets {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.mainField1 = mainField1;
    self.mainField2 = mainField2;
    self.mainField3 = mainField3;
    self.mainField4 = mainField4;
    self.statusBar = statusBar;
    self.mediaClock = mediaClock;
    self.mediaTrack = mediaTrack;
    self.alignment = alignment;
    self.graphic = graphic;
    self.softButtons = [softButtons mutableCopy];
    self.customPresets = [customPresets mutableCopy];

    return self;
}

- (instancetype)initWithMainField1:(nullable NSString *)mainField1 mainField2:(nullable NSString *)mainField2 mainField3:(nullable NSString *)mainField3 mainField4:(nullable NSString *)mainField4 alignment:(nullable SDLTextAlignment)alignment statusBar:(nullable NSString *)statusBar mediaClock:(nullable NSString *)mediaClock mediaTrack:(nullable NSString *)mediaTrack graphic:(nullable SDLImage *)graphic softButtons:(nullable NSArray<SDLSoftButton *> *)softButtons customPresets:(nullable NSArray<NSString *> *)customPresets textFieldMetadata:(SDLMetadataStruct *)metadata {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.mainField1 = mainField1;
    self.mainField2 = mainField2;
    self.mainField3 = mainField3;
    self.mainField4 = mainField4;
    self.statusBar = statusBar;
    self.mediaClock = mediaClock;
    self.mediaTrack = mediaTrack;
    self.alignment = alignment;
    self.graphic = graphic;
    self.softButtons = [softButtons mutableCopy];
    self.customPresets = [customPresets mutableCopy];
    self.textFieldMetadata = metadata;

    return self;
    
}

- (void)setMainField1:(nullable NSString *)mainField1 {
    [parameters sdl_setObject:mainField1 forName:SDLNameMainField1];
}

- (nullable NSString *)mainField1 {
    return [parameters sdl_objectForName:SDLNameMainField1];
}

- (void)setMainField2:(nullable NSString *)mainField2 {
    [parameters sdl_setObject:mainField2 forName:SDLNameMainField2];
}

- (nullable NSString *)mainField2 {
    return [parameters sdl_objectForName:SDLNameMainField2];
}

- (void)setMainField3:(nullable NSString *)mainField3 {
    [parameters sdl_setObject:mainField3 forName:SDLNameMainField3];
}

- (nullable NSString *)mainField3 {
    return [parameters sdl_objectForName:SDLNameMainField3];
}

- (void)setMainField4:(nullable NSString *)mainField4 {
    [parameters sdl_setObject:mainField4 forName:SDLNameMainField4];
}

- (nullable NSString *)mainField4 {
    return [parameters sdl_objectForName:SDLNameMainField4];
}

- (void)setAlignment:(nullable SDLTextAlignment)alignment {
    [parameters sdl_setObject:alignment forName:SDLNameAlignment];
}

- (nullable SDLTextAlignment)alignment {
    return [parameters sdl_objectForName:SDLNameAlignment];
}

- (void)setStatusBar:(nullable NSString *)statusBar {
    [parameters sdl_setObject:statusBar forName:SDLNameStatusBar];
}

- (nullable NSString *)statusBar {
    return [parameters sdl_objectForName:SDLNameStatusBar];
}

- (void)setMediaClock:(nullable NSString *)mediaClock {
    [parameters sdl_setObject:mediaClock forName:SDLNameMediaClock];
}

- (nullable NSString *)mediaClock {
    return [parameters sdl_objectForName:SDLNameMediaClock];
}

- (void)setMediaTrack:(nullable NSString *)mediaTrack {
    [parameters sdl_setObject:mediaTrack forName:SDLNameMediaTrack];
}

- (nullable NSString *)mediaTrack {
    return [parameters sdl_objectForName:SDLNameMediaTrack];
}

- (void)setGraphic:(nullable SDLImage *)graphic {
    [parameters sdl_setObject:graphic forName:SDLNameGraphic];
}

- (nullable SDLImage *)graphic {
    return [parameters sdl_objectForName:SDLNameGraphic ofClass:SDLImage.class];
}

- (void)setSecondaryGraphic:(nullable SDLImage *)secondaryGraphic {
    [parameters sdl_setObject:secondaryGraphic forName:SDLNameSecondaryGraphic];
}

- (nullable SDLImage *)secondaryGraphic {
    return [parameters sdl_objectForName:SDLNameSecondaryGraphic ofClass:SDLImage.class];
}

- (void)setSoftButtons:(nullable NSArray<SDLSoftButton *> *)softButtons {
    [parameters sdl_setObject:softButtons forName:SDLNameSoftButtons];
}

- (nullable NSArray<SDLSoftButton *> *)softButtons {
    return [parameters sdl_objectsForName:SDLNameSoftButtons ofClass:SDLSoftButton.class];
}

- (void)setCustomPresets:(nullable NSArray<NSString *> *)customPresets {
    [parameters sdl_setObject:customPresets forName:SDLNameCustomPresets];
}

- (nullable NSArray<NSString *> *)customPresets {
    return [parameters sdl_objectForName:SDLNameCustomPresets];
}

- (void)setTextFieldMetadata:(nullable SDLMetadataStruct *)textFieldMetadata {
    [parameters sdl_setObject:textFieldMetadata forName:SDLNameTextFieldMetadata];
}

- (nullable SDLMetadataStruct *)textFieldMetadata {
    return [parameters sdl_objectForName:SDLNameTextFieldMetadata ofClass:SDLMetadataStruct.class];
}

@end

NS_ASSUME_NONNULL_END
