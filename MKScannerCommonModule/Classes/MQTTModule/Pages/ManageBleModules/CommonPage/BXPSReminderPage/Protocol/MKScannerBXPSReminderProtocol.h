
NS_ASSUME_NONNULL_BEGIN

//BXP-T/BXP-S使用这个

@protocol MKScannerBXPSReminderProtocol <NSObject>

/// 是否支持蜂鸣器功能
@property (nonatomic, assign)BOOL supportBuzzer;


/// 远程LED提醒
/// - Parameters:
///   - color: 0:Green 1:Blue  2:Red
///   - blinkingTime: 1s~600s
///   - blinkingInterval: 1 * 100ms ~ 100 * 100ms
///   - sucBlock: 成功回调
///   - failedBlock: 失败回调
- (void)ledRemoteReminderWithColor:(NSInteger)color
                      blinkingTime:(NSInteger)blinkingTime
                  blinkingInterval:(NSInteger)blinkingInterval
                          sucBlock:(void (^)(void))sucBlock
                       failedBlock:(void (^)(NSError *error))failedBlock;

@optional
/// 远程蜂鸣器提醒
/// - Parameters:
///   - ringingTime: 1s~600s
///   - ringingInterval: 1 * 100ms ~ 100 * 100ms
///   - sucBlock: 成功回调
///   - failedBlock: 失败回调
- (void)buzzerRemoteReminderWithRingingTime:(NSInteger)ringingTime
                            ringingInterval:(NSInteger)ringingInterval
                                   sucBlock:(void (^)(void))sucBlock
                                failedBlock:(void (^)(NSError *error))failedBlock;

@end

NS_ASSUME_NONNULL_END
