
NS_ASSUME_NONNULL_BEGIN

@interface MKScannerDeviceInfoModel : NSObject

/// 要展示的左侧msg，表示当前数值是什么
@property (nonatomic, copy)NSString *key;

/// 要展示的右侧信息，表示数值
@property (nonatomic, copy)NSString *value;

@end

@implementation MKScannerDeviceInfoModel
@end

@protocol MKScannerDeviceInfoProtocol <NSObject>

- (void)readDataWithSucBlock:(void (^)(NSArray <MKScannerDeviceInfoModel *>*dataList))sucBlock
                 failedBlock:(void (^)(NSError *error))failedBlock;

@end

NS_ASSUME_NONNULL_END
