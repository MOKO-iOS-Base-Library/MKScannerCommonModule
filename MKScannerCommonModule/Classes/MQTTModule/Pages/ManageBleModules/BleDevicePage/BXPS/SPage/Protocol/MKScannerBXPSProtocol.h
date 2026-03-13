
#import "MKScannerButtonDfuV2Protocol.h"
#import "MKScannerRealTimeTHDataProtocol.h"
#import "MKScannerBXPSHistoricalTHDataProtocol.h"
#import "MKScannerTHDataSampleRateProtocol.h"
#import "MKScannerBXPSHallCountProtocol.h"
#import "MKScannerBXPSReminderProtocol.h"
#import "MKScannerBXPSAdvParamsProtocol.h"
#import "MKScannerAccDataProtocol.h"

#import "MKScannerBXPSReadModel.h"


NS_ASSUME_NONNULL_BEGIN

@protocol MKScannerBXPSProtocol <NSObject>

/// 对于一些新的设备，支持电池百分比和电池电量两种模式
@property (nonatomic, assign)BOOL supportBatteryMode;

@property (nonatomic, copy)NSString *title;

@property (nonatomic, strong)NSDictionary *deviceBleInfo;

/// 设备断开连接
@property (nonatomic, copy)void (^receiveDisconnectBlock)(void);

- (id <MKScannerButtonDfuV2Protocol>)dfuProtocol;

- (id <MKScannerRealTimeTHDataProtocol>)realTimeTHDataProtocol;

- (id <MKScannerBXPSHistoricalTHDataProtocol>)historicalTHDataProtocol;

- (id <MKScannerAccDataProtocol>)accProtocol;

- (id <MKScannerTHDataSampleRateProtocol>)sampleRateProtocol;

- (id <MKScannerBXPSHallCountProtocol>)hallCountProtocol;

- (id <MKScannerBXPSReminderProtocol>)remoteReminderProtocol;

- (id <MKScannerBXPSAdvParamsProtocol>)advProtocol;


- (void)readDeviceDatasWithSucBlock:(void (^)(MKScannerBXPSReadModel *readModel))sucBlock
                        failedBlock:(void (^)(NSError *error))failedBlock;

- (void)disconnectWithSucBlock:(void (^)(id returnData))sucBlock
                   failedBlock:(void (^)(NSError *error))failedBlock;

- (void)powerOffWithSucBlock:(void (^)(id returnData))sucBlock
                 failedBlock:(void (^)(NSError *error))failedBlock;

@optional

/// 读取电池显示模式
/// - Parameters:
///   - sucBlock: 成功回调(0:显示百分比   1:显示电压)
///   - failedBlock: 失败回调
- (void)readBatteryAdvModeWithSucBlock:(void (^)(NSInteger mode))sucBlock
                           failedBlock:(void (^)(NSError *error))failedBlock;

/// 配置电池显示模式
/// - Parameters:
///   - mode: 0:显示百分比   1:显示电压
///   - sucBlock: 成功回调
///   - failedBlock: 失败回调
- (void)configBatteryAdvMode:(NSInteger)mode
                    sucBlock:(void (^)(void))sucBlock
                 failedBlock:(void (^)(NSError *error))failedBlock;

@end

NS_ASSUME_NONNULL_END
