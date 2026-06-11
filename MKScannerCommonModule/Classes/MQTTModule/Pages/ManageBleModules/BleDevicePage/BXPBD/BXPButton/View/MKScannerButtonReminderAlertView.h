//
//  MKScannerButtonReminderAlertView.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/6/11.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerButtonReminderAlertViewModel : NSObject

@property (nonatomic, assign)BOOL needColor;

@property (nonatomic, copy)NSString *title;

@property (nonatomic, copy)NSString *intervalMsg;

@property (nonatomic, copy)NSString *durationMsg;

@end

@interface MKScannerButtonReminderAlertView : UIView

- (void)showAlertWithModel:(MKScannerButtonReminderAlertViewModel *)dataModel
             confirmAction:(void (^)(NSString *interval, NSString *duration, NSInteger color))confirmAction;

@end

NS_ASSUME_NONNULL_END
