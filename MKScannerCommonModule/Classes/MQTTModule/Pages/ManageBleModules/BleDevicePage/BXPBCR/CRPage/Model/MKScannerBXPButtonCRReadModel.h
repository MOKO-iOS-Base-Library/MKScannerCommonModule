//
//  MKScannerBXPButtonCRReadModel.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/3/13.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerBXPButtonCRReadModel : NSObject

/// mV
@property (nonatomic, copy)NSString *batteryVoltage;

/// %
@property (nonatomic, copy)NSString *batteryLevel;

@property (nonatomic, copy)NSString *singleAlarmNum;

@property (nonatomic, copy)NSString *doubleAlarmNum;

@property (nonatomic, copy)NSString *longAlarmNum;

@end

NS_ASSUME_NONNULL_END
