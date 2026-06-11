
NS_ASSUME_NONNULL_BEGIN

@protocol MKScannerDataParsingPageProtocol <NSObject>

@property (nonatomic, assign)BOOL iBeacon;

@property (nonatomic, assign)BOOL uid;

@property (nonatomic, assign)BOOL url;

@property (nonatomic, assign)BOOL tlm;

@property (nonatomic, assign)BOOL deviceInfo;

@property (nonatomic, assign)BOOL acc;

@property (nonatomic, assign)BOOL th;

@property (nonatomic, assign)BOOL button;

@property (nonatomic, assign)BOOL sensor;

@property (nonatomic, assign)BOOL pir;

@property (nonatomic, assign)BOOL tof;

@property (nonatomic, assign)BOOL nanoBeacon;

- (void)readDataWithSucBlock:(void (^)(void))sucBlock failedBlock:(void (^)(NSError *error))failedBlock;

- (void)configDataWithSucBlock:(void (^)(void))sucBlock failedBlock:(void (^)(NSError *error))failedBlock;

@end

NS_ASSUME_NONNULL_END
