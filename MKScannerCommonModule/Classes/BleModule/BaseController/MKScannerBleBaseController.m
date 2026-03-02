//
//  MKScannerBleBaseController.m
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/2/26.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import "MKScannerBleBaseController.h"

#import "MKMacroDefines.h"
#import "UIView+MKAdd.h"

#import "MKScannerBleModuleManager.h"

@interface MKScannerBleBaseController ()

@end

@implementation MKScannerBleBaseController

- (void)dealloc {
    NSLog(@"MKScannerBleBaseController销毁");
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(deviceConnectStateChanged)
                                                 name:[MKScannerBleModuleManager shared].peripheralConnectStateChangedNotification
                                               object:nil];
}

#pragma mark - note
- (void)deviceConnectStateChanged {
    if (![MKBaseViewController isCurrentViewControllerVisible:self]) {
        return;
    }
    [self.view showCentralToast:@"Device disconnect!"];
    [self performSelector:@selector(gotoScanPage) withObject:nil afterDelay:0.5f];
}

#pragma mark - private method
- (void)gotoScanPage {
    [self popToViewControllerWithClassName:[MKScannerBleModuleManager shared].scanPageClassName];
}

@end
