//
//  MKScannerDataParsingController.h
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/6/11.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import "MKScannerBaseController.h"

#import "MKScannerDataParsingPageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MKScannerDataParsingController : MKScannerBaseController

- (instancetype)initWithProtocol:(id<MKScannerDataParsingPageProtocol>)protocol;

@end

NS_ASSUME_NONNULL_END
