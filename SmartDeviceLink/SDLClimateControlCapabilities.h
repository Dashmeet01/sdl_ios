//
//  SDLClimateControlCapabilities.h
//

#import "SDLRPCMessage.h"
#import "SDLDefrostZone.h"
#import "SDLVentilationMode.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * Contains information about a climate control module's capabilities.
 */
@interface SDLClimateControlCapabilities : SDLRPCStruct

- (instancetype)initWithModuleName:(NSString *)moduleName;

- (instancetype)initWithFanSpeedAvailable:(nullable NSNumber<SDLBool> *)fanSpeedAvailable;

- (instancetype)initWithDesiredTemperatureAvailable:(nullable NSNumber<SDLBool> *)desiredTemperatureAvailable;

- (instancetype)initWithAcEnableAvailable:(nullable NSNumber<SDLBool> *)acEnableAvailable;

- (instancetype)initWithAcMaxEnableAvailable:(nullable NSNumber<SDLBool> *)acMaxEnableAvailable;

- (instancetype)initWithCirculateAirEnableAvailable:(nullable NSNumber<SDLBool> *)circulateAirEnableAvailable;

- (instancetype)initWithAutoModeEnableAvailable:(nullable NSNumber<SDLBool> *)autoModeEnableAvailable;

- (instancetype)initWithDualModeEnableAvailable:(nullable NSNumber<SDLBool> *)dualModeEnableAvailable;

- (instancetype)initWithDefrostZoneAvailableAvailable:(nullable NSNumber<SDLBool> *)defrostZoneAvailable;

- (instancetype)initWithDefrostZone:(nullable NSArray<SDLDefrostZone> *)defrostZone;

- (instancetype)initWithVentilationModeAvailable:(nullable NSNumber<SDLBool> *)ventilationModeAvailable;

- (instancetype)initWithVentilationMode:(nullable NSArray<SDLVentilationMode> *)ventilationMode;


/**
 * @abstractThe short friendly name of the climate control module.
 * It should not be used to identify a module by mobile application.
 *
 * Max string length 100 chars
 */
@property (strong, nonatomic) NSString *moduleName;

/**
 * @abstract Availability of the control of fan speed.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *fanSpeedAvailable;

/**
 * @abstract Availability of the control of desired temperature.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *desiredTemperatureAvailable;

/**
 * @abstract Availability of the control of turn on/off AC.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *acEnableAvailable;

/**
 * @abstract  Availability of the control of enable/disable air conditioning is ON on the maximum level.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *acMaxEnableAvailable;

/**
 * @abstract Availability of the control of enable/disable circulate Air mode.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *circulateAirEnableAvailable;

/**
 * @abstract Availability of the control of enable/disable auto mode.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *autoModeEnableAvailable;

/**
 * @abstract Availability of the control of enable/disable dual mode.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *dualModeEnableAvailable;

/**
 * @abstract Availability of the control of defrost zones.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *defrostZoneAvailable;

/**
 * @abstract  A set of all defrost zones that are controllable.
 *
 * Optional, NSArray of type SDLDefrostZone minsize="1" maxsize="100"
 */
@property (nullable, strong, nonatomic) NSArray<SDLDefrostZone > *defrostZone;

/**
 * @abstract Availability of the control of air ventilation mode.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, Boolean
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *ventilationModeAvailable;

/**
 * @abstract  A set of all ventilation modes that are controllable.
 * True: Available, False: Not Available, Not present: Not Available.
 *
 * Optional, NSArray of type SDLVentilationMode minsize="1" maxsize="100"
 */
@property (nullable, strong, nonatomic) NSArray<SDLVentilationMode> *ventilationMode;

@end

NS_ASSUME_NONNULL_END