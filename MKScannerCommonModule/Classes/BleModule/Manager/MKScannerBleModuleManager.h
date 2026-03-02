//
//  MKScannerBleModuleManager.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/2/26.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerBleModuleManager : NSObject

/// 设备蓝牙连接状态发生改变通知名称
@property (nonatomic, copy) NSString *peripheralConnectStateChangedNotification;

/// 设备蓝牙断开连接之后，返回扫描页面，扫描页面的class name
@property (nonatomic, copy) NSString *scanPageClassName;

+ (MKScannerBleModuleManager *)shared;

+ (void)sharedDealloc;

@end

NS_ASSUME_NONNULL_END
