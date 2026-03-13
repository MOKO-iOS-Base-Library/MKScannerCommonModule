//
//  MKScannerBXPButtonReadModel.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/3/13.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerBXPButtonReadModel : NSObject

/// 当前显示的是否是百分比
@property (nonatomic, assign)BOOL isBtteryLevel;

/// isBtteryLevel=YES，则100%，isBtteryLevel=NO则3310mV
@property (nonatomic, copy)NSString *battery;

@property (nonatomic, copy)NSString *singleAlarmNum;

@property (nonatomic, copy)NSString *doubleAlarmNum;

@property (nonatomic, copy)NSString *longAlarmNum;

@property (nonatomic, copy)NSString *alarmStatus;

@end

NS_ASSUME_NONNULL_END
