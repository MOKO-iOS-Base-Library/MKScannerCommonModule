//
//  MKScannerBaseController.m
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/2/26.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import "MKScannerBaseController.h"

#import "MKMacroDefines.h"
#import "UIView+MKAdd.h"

#import "MKScannerDeviceModelManager.h"

#import "MKScannerMQTTModuleManager.h"

@interface MKScannerBaseController ()

@end

@implementation MKScannerBaseController

- (void)dealloc {
    NSLog(@"MKScannerBaseController销毁");
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addNotifications];
}

#pragma mark - note
- (void)deviceOffline:(NSNotification *)note {
    NSDictionary *user = note.userInfo;
    if (!ValidDict(user) || !ValidStr(user[@"macAddress"])) {
        return;
    }
    [self processOfflineWithMacAddress:user[@"macAddress"]];
}

- (void)receiveDeviceLwtMessage:(NSNotification *)note {
    NSDictionary *user = note.userInfo;
    if (!ValidDict(user) || !ValidStr(user[@"device_info"][@"mac"])) {
        return;
    }
    [self processOfflineWithMacAddress:user[@"device_info"][@"mac"]];
}

- (void)deviceResetByButton:(NSNotification *)note {
    NSDictionary *user = note.userInfo;
    if (!ValidDict(user) || !ValidStr(user[@"device_info"][@"mac"])) {
        return;
    }
    [self processOfflineWithMacAddress:user[@"device_info"][@"mac"]];
}

- (void)loadChanged:(NSNotification *)note {
    NSDictionary *user = note.userInfo;
    if (!ValidDict(user) || !ValidStr(user[@"device_info"][@"mac"])) {
        return;
    }
    if (![user[@"device_info"][@"mac"] isEqualToString:[MKScannerDeviceModelManager shared].macAddress] || ![MKBaseViewController isCurrentViewControllerVisible:self]) {
        return;
    }
    NSString *message = ([user[@"data"][@"load_state"] integerValue] == 1 ? @"Load start work!" : @"Load stop work!");
    [self.view showCentralToast:message];
}

#pragma mark - Private method
- (void)addNotifications {
    if (ValidStr([MKScannerMQTTModuleManager shared].deviceOfflineNotification)) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(deviceOffline:)
                                                     name:[MKScannerMQTTModuleManager shared].deviceOfflineNotification
                                                   object:nil];
    }
    if (ValidStr([MKScannerMQTTModuleManager shared].receiveLwtMessageNotification)) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(receiveDeviceLwtMessage:)
                                                     name:[MKScannerMQTTModuleManager shared].receiveLwtMessageNotification
                                                   object:nil];
    }
    if (ValidStr([MKScannerMQTTModuleManager shared].resetByButtonNotification)) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(deviceResetByButton:)
                                                     name:[MKScannerMQTTModuleManager shared].resetByButtonNotification
                                                   object:nil];
    }
    if (ValidStr([MKScannerMQTTModuleManager shared].loadChangedNotification)) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(loadChanged:)
                                                     name:[MKScannerMQTTModuleManager shared].loadChangedNotification
                                                   object:nil];
    }
}

- (void)processOfflineWithMacAddress:(NSString *)macAddress {
    if (![macAddress isEqualToString:[MKScannerDeviceModelManager shared].macAddress]) {
        return;
    }
    if (![MKBaseViewController isCurrentViewControllerVisible:self]) {
        return;
    }
    //让setting页面推出的alert消失
    [[NSNotificationCenter defaultCenter] postNotificationName:@"mk_scanner_needDismissAlert" object:nil];
    //让所有MKPickView消失
    [[NSNotificationCenter defaultCenter] postNotificationName:@"mk_customUIModule_dismissPickView" object:nil];
    [self.view showCentralToast:@"device is off-line"];
    [self performSelector:@selector(gobackToListView) withObject:nil afterDelay:1.f];
}

- (void)gobackToListView {
    [self popToViewControllerWithClassName:[MKScannerMQTTModuleManager shared].deviceListsPageClassName];
}

@end
