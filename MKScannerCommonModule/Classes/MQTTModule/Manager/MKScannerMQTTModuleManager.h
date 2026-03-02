//
//  MKScannerMQTTModuleManager.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/2/26.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerMQTTModuleManager : NSObject

/// 设备离线通知名称
@property (nonatomic, copy) NSString *deviceOfflineNotification;

/// 设备接收到遗言通知名称
@property (nonatomic, copy) NSString *receiveLwtMessageNotification;

/// 设备按键恢复出厂设置通知名称
@property (nonatomic, copy) NSString *resetByButtonNotification;

/// 设备负载状态改变通知名称，带负载的网关才有这个
@property (nonatomic, copy) NSString *loadChangedNotification;

/// 触发以上几个通知之后，需要发出通知让所有的Alert消失，每个项目里面存在差异
@property (nonatomic, copy) NSString *needDismissAlertNotification;

/// 设备离线之后，返回设备列表页面，列表页面的class name
@property (nonatomic, copy) NSString *deviceListsPageClassName;



+ (MKScannerMQTTModuleManager *)shared;

+ (void)sharedDealloc;

@end

NS_ASSUME_NONNULL_END
