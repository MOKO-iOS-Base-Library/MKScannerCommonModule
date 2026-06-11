//
//  MKScannerButtonV1Controller.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/6/11.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import "MKScannerBaseController.h"

#import "MKScannerButtonV1Protocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerButtonV1Controller : MKScannerBaseController

- (instancetype)initWithProtocol:(id<MKScannerButtonV1Protocol>)protocol;

@end

NS_ASSUME_NONNULL_END
