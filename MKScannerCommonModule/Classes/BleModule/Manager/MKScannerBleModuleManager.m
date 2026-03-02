//
//  MKScannerBleModuleManager.m
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/2/26.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import "MKScannerBleModuleManager.h"

#import "MKMacroDefines.h"


static MKScannerBleModuleManager *manager = nil;
static dispatch_once_t onceToken;

@implementation MKScannerBleModuleManager

+ (MKScannerBleModuleManager *)shared {
    dispatch_once(&onceToken, ^{
        if (!manager) {
            manager = [MKScannerBleModuleManager new];
        }
    });
    return manager;
}

+ (void)sharedDealloc {
    manager = nil;
    onceToken = 0;
}

@end
