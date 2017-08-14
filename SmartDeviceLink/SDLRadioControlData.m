//
//  SDLRadioControlData.m
//

#import "SDLRadioControlData.h"
#import "SDLNames.h"
#import "SDLRdsData.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLRadioControlData

- (instancetype)initWithFrequencyInteger:(NSNumber<SDLInt> *)frequencyInteger {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.frequencyInteger = frequencyInteger;
    return self;
}

- (instancetype)initWithFrequencyFraction:(NSNumber<SDLInt> *)frequencyFraction {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.frequencyFraction = frequencyFraction;
    return self;
}

- (instancetype)initWithBand:(SDLRadioBand)band {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.band = band;
    return self;
}

- (instancetype)initWithRdsData:(SDLRdsData *)rdsData {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.rdsData = rdsData;
    return self;
}

- (instancetype)initWithAvailableHDs:(NSNumber<SDLInt> *)availableHDs {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.availableHDs = availableHDs;
    return self;
}

- (instancetype)initWithHdChannel:(NSNumber<SDLInt> *)hdChannel {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.hdChannel = hdChannel;
    return self;
}

- (instancetype)initWithSignalStrength:(NSNumber<SDLInt> *)signalStrength {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.signalStrength = signalStrength;
    return self;
}

- (instancetype)initWithSignalChangeThreshold:(NSNumber<SDLInt> *)signalChangeThreshold {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.signalChangeThreshold = signalChangeThreshold;
    return self;
}

- (instancetype)initWithRadioEnable:(NSNumber<SDLBool> *)radioEnable {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.radioEnable = radioEnable;
    return self;
}

- (instancetype)initWithState:(SDLRadioState)state {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.state = state;
    return self;
}

- (void)setFrequencyInteger:(nullable NSNumber<SDLInt> *)frequencyInteger {
    [store sdl_setObject:frequencyInteger forName:SDLNameFrequencyInteger];
}

- (nullable NSNumber<SDLInt> *)frequencyInteger {
    return [store sdl_objectForName:SDLNameFrequencyInteger];
}

- (void)setFrequencyFraction:(nullable NSNumber<SDLInt> *)frequencyFraction {
    [store sdl_setObject:frequencyFraction forName:SDLNameFrequencyFraction];
}

- (nullable NSNumber<SDLInt> *)frequencyFraction {
    return [store sdl_objectForName:SDLNameFrequencyFraction];
}

- (void)setBand:(nullable SDLRadioBand)band {
    [store sdl_setObject:band forName:SDLNameBand];
}

- (nullable SDLRadioBand)band{
    return [store sdl_objectForName:SDLNameBand];
}

- (void)setRdsData:(nullable SDLRdsData *)rdsData {
    [store sdl_setObject:rdsData forName:SDLNameRdsData];
}

- (nullable SDLRdsData *)rdsData {
    return [store sdl_objectForName:SDLNameRdsData];
}

- (void)setAvailableHDs:(nullable NSNumber<SDLInt> *)availableHDs {
    [store sdl_setObject:availableHDs forName:SDLNameAvailableHDs];
}

- (nullable NSNumber<SDLInt> *)availableHDs {
    return [store sdl_objectForName:SDLNameAvailableHDs];
}

- (void)setHdChannel:(nullable NSNumber<SDLInt> *)hdChannel {
    [store sdl_setObject:hdChannel forName:SDLNameHdChannel];
}

- (nullable NSNumber<SDLInt> *)hdChannel {
    return [store sdl_objectForName:SDLNameHdChannel];
}

- (void)setSignalStrength:(nullable NSNumber<SDLInt> *)signalStrength {
    [store sdl_setObject:signalStrength forName:SDLNameSignalStrength];
}

- (nullable NSNumber<SDLInt> *)signalStrength {
    return [store sdl_objectForName:SDLNameSignalStrength];
}

- (void)setSignalChangeThreshold:(nullable NSNumber<SDLInt> *)signalChangeThreshold {
    [store sdl_setObject:signalChangeThreshold forName:SDLNameSignalChangeThreshold];
}

- (nullable NSNumber<SDLInt> *)signalChangeThreshold {
    return [store sdl_objectForName:SDLNameSignalChangeThreshold];
}

- (void)setRadioEnable:(nullable NSNumber<SDLBool> *)radioEnable {
    [store sdl_setObject:radioEnable forName:SDLNameRadioEnable];
}

- (nullable NSNumber<SDLBool> *)radioEnable {
    return [store sdl_objectForName:SDLNameRadioEnable];
}

- (void)setState:(nullable SDLRadioState)state {
    [store sdl_setObject:state forName:SDLNameState];
}

- (nullable SDLRadioState)state {
    return [store sdl_objectForName:SDLNameState];
}

@end

NS_ASSUME_NONNULL_END