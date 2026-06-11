
NS_ASSUME_NONNULL_BEGIN

@protocol MKScannerDuplicateDataFilterProtocol <NSObject>

/// 是否支持Strategy
@property (nonatomic, assign)BOOL supportStrategy;

/// 0:None    1:MAC   2:MAC+Data  type  3:MAC+Raw data
@property (nonatomic, assign)NSInteger rule;

@property (nonatomic, copy)NSString *time;

/// 0:Strategy1    1:Strategy2
@property (nonatomic, assign)NSInteger strategy;

- (void)readDataWithSucBlock:(void (^)(void))sucBlock failedBlock:(void (^)(NSError *error))failedBlock;

- (void)configDataWithSucBlock:(void (^)(void))sucBlock failedBlock:(void (^)(NSError *error))failedBlock;

@end

NS_ASSUME_NONNULL_END
