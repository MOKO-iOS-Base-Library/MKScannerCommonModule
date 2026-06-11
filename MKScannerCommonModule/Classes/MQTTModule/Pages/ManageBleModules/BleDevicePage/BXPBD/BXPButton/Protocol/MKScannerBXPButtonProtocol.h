
#import "MKScannerButtonDfuV2Protocol.h"
#import "MKScannerRemoteReminderProtocol.h"
#import "MKScannerAccDataProtocol.h"
#import "MKScannerBXPCAdvParamsProtocol.h"

#import "MKScannerBXPButtonReadModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MKScannerBXPButtonProtocol <NSObject>

/// 对于一些新的设备，支持电池百分比和电池电量两种模式
@property (nonatomic, assign)BOOL supportBatteryMode;

@property (nonatomic, copy)NSString *title;

@property (nonatomic, strong)NSDictionary *deviceBleInfo;

/// 设备断开连接
@property (nonatomic, copy)void (^receiveDisconnectBlock)(void);

- (id <MKScannerButtonDfuV2Protocol>)dfuProtocol2;

- (id <MKScannerRemoteReminderProtocol>)remoteReminderProtocol;

- (id <MKScannerAccDataProtocol>)accProtocol;

- (id <MKScannerBXPCAdvParamsProtocol>)advProtocol;

/// 清除事件计数
/// - Parameters:
///   - type: 0: single press 1: double press 2: long press
///   - sucBlock: 成功回调
///   - failedBlock: 失败回调
- (void)clearTriggerEventCountWithType:(NSInteger)type
                              sucBlock:(void (^)(void))sucBlock
                           failedBlock:(void (^)(NSError *error))failedBlock;

- (void)readDeviceDatasWithSucBlock:(void (^)(MKScannerBXPButtonReadModel *readModel))sucBlock
                        failedBlock:(void (^)(NSError *error))failedBlock;

- (void)dismissBXPButtonAlarmStatusWithSucBlock:(void (^)(id returnData))sucBlock
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
