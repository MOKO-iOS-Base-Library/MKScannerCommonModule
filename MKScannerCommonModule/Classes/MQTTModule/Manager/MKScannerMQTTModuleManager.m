//
//  MKScannerMQTTModuleManager.m
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/2/26.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import "MKScannerMQTTModuleManager.h"

#import "MKMacroDefines.h"


static MKScannerMQTTModuleManager *manager = nil;
static dispatch_once_t onceToken;

@implementation MKScannerMQTTModuleManager

+ (MKScannerMQTTModuleManager *)shared {
    dispatch_once(&onceToken, ^{
        if (!manager) {
            manager = [MKScannerMQTTModuleManager new];
        }
    });
    return manager;
}

+ (void)sharedDealloc {
    manager = nil;
    onceToken = 0;
}

@end
