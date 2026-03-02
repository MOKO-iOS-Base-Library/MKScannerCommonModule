
NS_ASSUME_NONNULL_BEGIN

@interface MKScannerBleDeviceInfoModel : NSObject

/// 要展示的左侧msg，表示当前数值是什么
@property (nonatomic, copy)NSString *key;

/// 要展示的右侧信息，表示数值
@property (nonatomic, copy)NSString *value;

@end

@implementation MKScannerBleDeviceInfoModel
@end

@protocol MKScannerBleDeviceInfoProtocol <NSObject>

- (void)readDataWithSucBlock:(void (^)(NSArray <MKScannerBleDeviceInfoModel *>*dataList))sucBlock
                 failedBlock:(void (^)(NSError *error))failedBlock;

@end

NS_ASSUME_NONNULL_END
