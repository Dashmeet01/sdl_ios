//
//  SDLPermissionManager.h
//  SmartDeviceLink-iOS
//
//  Created by Joel Fischer on 10/14/15.
//  Copyright © 2015 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SDLPermissionConstants.h"

@class SDLHMILevel;
@class SDLPermissionItem;


NS_ASSUME_NONNULL_BEGIN

@interface SDLPermissionManager : NSObject

/**
 *  Determine if an individual RPC is allowed for the current HMI level
 *
 *  @param rpcName  The name of the RPC to be tested, // TODO: add an example
 *
 *  @return YES if the RPC is allowed at the current HMI level, NO if not
 */
- (BOOL)isRPCAllowed:(SDLPermissionRPCName *)rpcName;

/**
 *  Determine if all RPCs are allowed for the current HMI level
 *
 *  @param rpcNames The RPCs to check
 *
 *  @return AllAllowed if all of the permissions are allowed, AllDisallowed if all the permissions are disallowed, Any if some are allowed, and some are disallowed
 */
- (SDLPermissionGroupStatus)groupStatusOfRPCs:(NSArray<SDLPermissionRPCName *> *)rpcNames;

/**
 *  Retrieve a dictionary with keys that are the passed in RPC names, and objects of an NSNumber<BOOL> specifying if that RPC is currently allowed
 *
 *  @param rpcNames An array of RPC names to check
 *
 *  @return A dictionary specifying if the passed in RPC names are currently allowed or not
 */
- (NSDictionary<SDLPermissionRPCName *, NSNumber<SDLBool> *> *)statusOfRPCs:(NSArray<SDLPermissionRPCName *> *)rpcNames;

/**
 *  Add an observer for specified RPC names, with a callback that will be called whenever the value changes, as well as immediately if the RPC's current permissions are known and fit the specifications.
 *
 *  @warning This block will be captured by the SDLPermissionsManager, be sure to use [weakself/strongself](http://www.logicsector.com/ios/avoiding-objc-retain-cycles-with-weakself-and-strongself-the-easy-way/) if you are referencing self within your observer block.
 *
 *  @param rpcNames The RPCs to be observed
 *  @param groupType Affects the times that the observer block will be called. If Any, any change to any RPC in rpcNames will cause the observer block to be called. If AllAllowed, the block will be called when: 1. Every RPC in rpcNames becomes allowed 2. The group of rpcNames goes from all being allowed to some or all being disallowed.
 *  @param observer The block that will be called whenever permissions change.
 *
 *  @return An identifier that can be passed to removeObserverForIdentifer: to remove the observer
 */
- (SDLPermissionObserverIdentifier *)addObserverForRPCs:(NSArray<SDLPermissionRPCName *> *)rpcNames groupType:(SDLPermissionGroupType)groupType withBlock:(SDLPermissionObserver)observer;

/**
 *  Remove every current observer
 */
- (void)removeAllObservers;

/**
 *  Remove block observers for the specified RPC
 *
 *  @param identifier The identifier specifying which observer to remove
 */
- (void)removeObserverForIdentifier:(SDLPermissionObserverIdentifier *)identifier;

@end

NS_ASSUME_NONNULL_END
