//
//  MKScannerBXPSReminderModel.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/3/13.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerBXPSReminderModel : NSObject

#pragma mark - LED notification

/// 0:Green 1:Blue  2:Red
@property (nonatomic, assign)NSInteger color;

@property (nonatomic, copy)NSString *blinkingTime;

@property (nonatomic, copy)NSString *blinkingInterval;


#pragma mark - Buzzer notification
@property (nonatomic, copy)NSString *ringingTime;

@property (nonatomic, copy)NSString *ringingInterval;

@end

NS_ASSUME_NONNULL_END
