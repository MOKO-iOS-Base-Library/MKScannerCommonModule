
#import "MKScannerButtonDfuV1Protocol.h"

#import "MKScannerBXPButtonReadModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MKScannerButtonV1Protocol <NSObject>

@property (nonatomic, copy)NSString *title;

@property (nonatomic, strong)NSDictionary *deviceBleInfo;

/// 设备断开连接
@property (nonatomic, copy)void (^receiveDisconnectBlock)(void);

- (id <MKScannerButtonDfuV1Protocol>)dfuProtocol1;

- (void)readDeviceDatasWithSucBlock:(void (^)(MKScannerBXPButtonReadModel *readModel))sucBlock
                        failedBlock:(void (^)(NSError *error))failedBlock;

- (void)dismissBXPButtonAlarmStatusWithSucBlock:(void (^)(id returnData))sucBlock
                                    failedBlock:(void (^)(NSError *error))failedBlock;

- (void)disconnectWithSucBlock:(void (^)(id returnData))sucBlock
                   failedBlock:(void (^)(NSError *error))failedBlock;

- (void)ledReminderWithInterval:(NSInteger)interval
                       duration:(NSInteger)duration
                       sucBlock:(void (^)(void))sucBlock
                    failedBlock:(void (^)(NSError *error))failedBlock;

- (void)buzzerReminderWithInterval:(NSInteger)interval
                          duration:(NSInteger)duration
                          sucBlock:(void (^)(void))sucBlock
                       failedBlock:(void (^)(NSError *error))failedBlock;

@end

NS_ASSUME_NONNULL_END
