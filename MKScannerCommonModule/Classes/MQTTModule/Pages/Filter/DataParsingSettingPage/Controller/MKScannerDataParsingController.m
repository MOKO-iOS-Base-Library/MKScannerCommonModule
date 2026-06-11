//
//  MKScannerDataParsingController.m
//  MKScannerCommonModule_Example
//
//  Created by aa on 2026/6/11.
//  Copyright © 2026 lovexiaoxia. All rights reserved.
//

#import "MKScannerDataParsingController.h"

#import "Masonry.h"

#import "MKMacroDefines.h"
#import "MKBaseTableView.h"
#import "UIView+MKAdd.h"
#import "NSString+MKAdd.h"

#import "MKHudManager.h"
#import "MKTextSwitchCell.h"

@interface MKScannerDataParsingController ()<UITableViewDelegate,
UITableViewDataSource,
mk_textSwitchCellDelegate>

@property (nonatomic, strong)MKBaseTableView *tableView;

@property (nonatomic, strong)NSMutableArray *dataList;

@property (nonatomic, strong)id <MKScannerDataParsingPageProtocol>protocol;

@end

@implementation MKScannerDataParsingController

- (void)dealloc {
    NSLog(@"MKScannerDataParsingController销毁");
}

- (instancetype)initWithProtocol:(id<MKScannerDataParsingPageProtocol>)protocol {
    if (self = [super init]) {
        _protocol = protocol;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadSubViews];
    [self readDataFromDevice];
}

#pragma mark - super method
- (void)rightButtonMethod {
    [self configDataToDevice];
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.f;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MKTextSwitchCell *cell = [MKTextSwitchCell initCellWithTableView:tableView];
    cell.dataModel = self.dataList[indexPath.row];
    cell.delegate = self;
    return cell;
}

#pragma mark - mk_textSwitchCellDelegate
/// 开关状态发生改变了
/// @param isOn 当前开关状态
/// @param index 当前cell所在的index
- (void)mk_textSwitchCellStatusChanged:(BOOL)isOn index:(NSInteger)index {
    MKTextSwitchCellModel *cellModel = self.dataList[index];
    cellModel.isOn = isOn;
    if (index == 0) {
        //iBeacon
        self.protocol.iBeacon = isOn;
        return;
    }
    if (index == 1) {
        //Eddystone-UID
        self.protocol.uid = isOn;
        return;
    }
    if (index == 2) {
        //Eddystone-URL
        self.protocol.url = isOn;
        return;
    }
    if (index == 3) {
        //Eddystone-TLM
        self.protocol.tlm = isOn;
        return;
    }
    if (index == 4) {
        //BXP- Device info
        self.protocol.deviceInfo = isOn;
        return;
    }
    if (index == 5) {
        //BXP - ACC
        self.protocol.acc = isOn;
        return;
    }
    if (index == 6) {
        //BXP - T&H
        self.protocol.th = isOn;
        return;
    }
    if (index == 7) {
        //BXP - Button
        self.protocol.button = isOn;
        return;
    }
    if (index == 8) {
        //BXP - Tag/Sensor
        self.protocol.sensor = isOn;
        return;
    }
    if (index == 9) {
        //PIR Presence
        self.protocol.pir = isOn;
        return;
    }
    if (index == 10) {
        //MK TOF
        self.protocol.tof = isOn;
        return;
    }
    if (index == 11) {
        //NanoBeacon info
        self.protocol.nanoBeacon = isOn;
        return;
    }
}

#pragma mark - interface
- (void)readDataFromDevice {
    [[MKHudManager share] showHUDWithTitle:@"Reading..." inView:self.view isPenetration:NO];
    @weakify(self);
    [self.protocol readDataWithSucBlock:^{
        @strongify(self);
        [[MKHudManager share] hide];
        [self loadSectionDatas];
    }
                            failedBlock:^(NSError * _Nonnull error) {
        @strongify(self);
        [[MKHudManager share] hide];
        [self.view showCentralToast:error.userInfo[@"errorInfo"]];
    }];
}

- (void)configDataToDevice {
    [[MKHudManager share] showHUDWithTitle:@"Config..." inView:self.view isPenetration:NO];
    @weakify(self);
    [self.protocol configDataWithSucBlock:^{
        @strongify(self);
        [[MKHudManager share] hide];
        [self.view showCentralToast:@"Setup succeed!"];
    }
                              failedBlock:^(NSError * _Nonnull error) {
        @strongify(self);
        [[MKHudManager share] hide];
        [self.view showCentralToast:error.userInfo[@"errorInfo"]];
    }];
}

#pragma mark - loadSectionDatas
- (void)loadSectionDatas {
    
    // 1. iBeacon
    MKTextSwitchCellModel *cellModel1 = [[MKTextSwitchCellModel alloc] init];
    cellModel1.index = 0;
    cellModel1.msg = @"iBeacon";
    cellModel1.isOn = self.protocol.iBeacon;
    [self.dataList addObject:cellModel1];
    
    // 2. Eddystone-UID
    MKTextSwitchCellModel *cellModel2 = [[MKTextSwitchCellModel alloc] init];
    cellModel2.index = 1;
    cellModel2.msg = @"Eddystone-UID";
    cellModel2.isOn = self.protocol.uid;
    [self.dataList addObject:cellModel2];
    
    // 3. Eddystone-URL
    MKTextSwitchCellModel *cellModel3 = [[MKTextSwitchCellModel alloc] init];
    cellModel3.index = 2;
    cellModel3.msg = @"Eddystone-URL";
    cellModel3.isOn = self.protocol.url;
    [self.dataList addObject:cellModel3];
    
    // 4. Eddystone-TLM
    MKTextSwitchCellModel *cellModel4 = [[MKTextSwitchCellModel alloc] init];
    cellModel4.index = 3;
    cellModel4.msg = @"Eddystone-TLM";
    cellModel4.isOn = self.protocol.tlm;
    [self.dataList addObject:cellModel4];
    
    // 5. BXP - Device info
    MKTextSwitchCellModel *cellModel5 = [[MKTextSwitchCellModel alloc] init];
    cellModel5.index = 4;
    cellModel5.msg = @"BXP - Device info";
    cellModel5.isOn = self.protocol.deviceInfo;
    [self.dataList addObject:cellModel5];
    
    // 6. BXP - ACC
    MKTextSwitchCellModel *cellModel6 = [[MKTextSwitchCellModel alloc] init];
    cellModel6.index = 5;
    cellModel6.msg = @"BXP - ACC";
    cellModel6.isOn = self.protocol.acc;
    [self.dataList addObject:cellModel6];
    
    // 7. BXP - T&H
    MKTextSwitchCellModel *cellModel7 = [[MKTextSwitchCellModel alloc] init];
    cellModel7.index = 6;
    cellModel7.msg = @"BXP - T&H";
    cellModel7.isOn = self.protocol.th;
    [self.dataList addObject:cellModel7];
    
    // 8. BXP - Button
    MKTextSwitchCellModel *cellModel8 = [[MKTextSwitchCellModel alloc] init];
    cellModel8.index = 7;
    cellModel8.msg = @"BXP - Button";
    cellModel8.isOn = self.protocol.button;
    [self.dataList addObject:cellModel8];
    
    // 9. BXP - Tag/Sensor
    MKTextSwitchCellModel *cellModel9 = [[MKTextSwitchCellModel alloc] init];
    cellModel9.index = 8;
    cellModel9.msg = @"BXP - Tag/Sensor";
    cellModel9.isOn = self.protocol.sensor;
    [self.dataList addObject:cellModel9];
    
    // 10. PIR Presence
    MKTextSwitchCellModel *cellModel10 = [[MKTextSwitchCellModel alloc] init];
    cellModel10.index = 9;
    cellModel10.msg = @"PIR Presence";
    cellModel10.isOn = self.protocol.pir;
    [self.dataList addObject:cellModel10];
    
    // 11. MK TOF
    MKTextSwitchCellModel *cellModel11 = [[MKTextSwitchCellModel alloc] init];
    cellModel11.index = 10;
    cellModel11.msg = @"MK TOF";
    cellModel11.isOn = self.protocol.tof;
    [self.dataList addObject:cellModel11];
    
    // 12. NanoBeacon info
    MKTextSwitchCellModel *cellModel12 = [[MKTextSwitchCellModel alloc] init];
    cellModel12.index = 11;
    cellModel12.msg = @"NanoBeacon info";
    cellModel12.isOn = self.protocol.nanoBeacon;
    [self.dataList addObject:cellModel12];
    
    [self.tableView reloadData];
}

#pragma mark - UI
- (void)loadSubViews {
    self.defaultTitle = @"Data Parsing Setting";
    [self.rightButton setImage:LOADICON(@"MKScannerCommonModule", @"MKScannerDataParsingController", @"mk_scanner_saveIcon.png") forState:UIControlStateNormal];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.top.equalTo(self.view).offset(kTopBarHeight);
        make.bottom.equalTo(self.view).offset(-kSafeAreaHeight);
    }];
}

#pragma mark - getter
- (MKBaseTableView *)tableView {
    if (!_tableView) {
        _tableView = [[MKBaseTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (NSMutableArray *)dataList {
    if (!_dataList) {
        _dataList = [NSMutableArray array];
    }
    return _dataList;
}

@end
