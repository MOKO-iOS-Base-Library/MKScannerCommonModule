#
# Be sure to run `pod lib lint MKScannerCommonModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKScannerCommonModule'
  s.version          = '0.0.11'
  s.summary          = 'Common scanner module for BLE and MQTT device management'

  s.description      = <<-DESC
  MKScannerCommonModule provides a comprehensive set of reusable components for scanning,
  managing, and configuring BLE and MQTT devices. It includes filter pages, device info pages,
  nearby WiFi scanning, and various BXP device management features.
                       DESC

  s.homepage         = 'https://github.com/MOKO-iOS-Base-Library/MKScannerCommonModule'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lovexiaoxia' => 'aadyx2007@163.com' }
  s.source           = { :git => 'https://github.com/MOKO-iOS-Base-Library/MKScannerCommonModule.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'
  
  s.resource_bundles = {
    'MKScannerCommonModule' => ['MKScannerCommonModule/Assets/*.png']
  }
  
  # ==========================================================
  # 通用扩展模块
  # ==========================================================
  s.subspec 'Expand' do |ss|
    
    # Excel管理
    ss.subspec 'ExcelManager' do |sss|
      sss.source_files = 'MKScannerCommonModule/Classes/Expand/ExcelManager/**'
      sss.dependency 'libxlsxwriter'
      sss.dependency 'SSZipArchive'
      sss.dependency 'MKBaseModuleLibrary'
    end
    
    # 导入服务器页面
    ss.subspec 'ImportServerPage' do |sss|
      sss.subspec 'Controller' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/ImportServerPage/Controller/**'
        ssss.dependency 'MKBaseModuleLibrary'
        ssss.dependency 'MKCustomUIModule'
      end
    end
    
    # 通用视图组件
    ss.subspec 'View' do |sss|
      # 添加设备视图
      sss.subspec 'AddDeviceView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/AddDeviceView/**'
      end
      
      # 广告参数相关Cell
      sss.subspec 'AdvNormalCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/AdvNormalCell/**'
      end
      
      sss.subspec 'AdvTriggerCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/AdvTriggerCell/**'
      end
      
      sss.subspec 'AdvTriggerTwoStateCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/AdvTriggerTwoStateCell/**'
      end
      
      # 弹窗视图
      sss.subspec 'AlertView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/AlertView/**'
      end
      
      # 蓝牙WiFi设置证书Cell
      sss.subspec 'BleWifiSettingsCertCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/BleWifiSettingsCertCell/**'
      end
      
      # 按钮固件Cell
      sss.subspec 'ButtonFirmwareCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/ButtonFirmwareCell/**'
      end
      
      # BXP广告参数Cell
      sss.subspec 'BXPAdvParamsCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/BXPAdvParamsCell/**'
      end
      
      # BXP按钮加速度头部视图
      sss.subspec 'BXPButtonAccHeaderView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/BXPButtonAccHeaderView/**'
      end
      
      # 简易显示视图
      sss.subspec 'EasyShowView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/EasyShowView/**'
      end
      
      # 过滤cell
      sss.subspec 'FilterCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/FilterCell/**'
      end
      
      # 历史温湿度数据头部视图
      sss.subspec 'HistoricalTHDataHeaderView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/HistoricalTHDataHeaderView/**'
      end
      
      # 管理蓝牙设备视图
      sss.subspec 'ManagerBleDeviceView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/ManagerBleDeviceView/**'
      end
      
      # 按键事件计数Cell
      sss.subspec 'PressEventCountCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/PressEventCountCell/**'
      end
      
      # 远程提醒Cell
      sss.subspec 'RemoteReminderCell' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/RemoteReminderCell/**'
      end
      
      # APP服务器配置视图
      sss.subspec 'ServerForAppView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/ServerForAppView/**'
      end
      
      # 用户凭证视图
      sss.subspec 'UserCredentialsView' do |ssss|
        ssss.source_files = 'MKScannerCommonModule/Classes/Expand/View/UserCredentialsView/**'
      end
      
      sss.dependency 'MKBaseModuleLibrary'
      sss.dependency 'MKCustomUIModule'
    end
  end
  
  # ==========================================================
  # 设备模型模块
  # ==========================================================
  s.subspec 'DeviceModel' do |ss|
    ss.source_files = 'MKScannerCommonModule/Classes/DeviceModel/**'
    ss.dependency 'MKBaseModuleLibrary'
  end
  
  # ==========================================================
  # 蓝牙模块
  # ==========================================================
  s.subspec 'BleModule' do |ss|
    ss.dependency 'MKBaseModuleLibrary'
    ss.dependency 'MKCustomUIModule'
    ss.dependency 'MLInputDodger'
    
    ss.dependency 'MKScannerCommonModule/Expand'
    
    # 蓝牙基础控制器
    ss.subspec 'BaseController' do |sss|
      sss.source_files = 'MKScannerCommonModule/Classes/BleModule/BaseController/**'
    end
    
    # 蓝牙页面
    ss.subspec 'Pages' do |sss|
      
      sss.dependency 'MKScannerCommonModule/BleModule/BaseController'
      
      # 广告信标页面
      sss.subspec 'AdvBeaconPage' do |ssss|
        ssss.subspec 'Protocol' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/AdvBeaconPage/Protocol/**'
        end
        
        ssss.subspec 'Controller' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/AdvBeaconPage/Controller/**'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/AdvBeaconPage/Protocol'
        end
      end
      
      # 设备信息页面
      sss.subspec 'DeviceInfoPage' do |ssss|
        ssss.subspec 'Model' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/DeviceInfoPage/Model/**'
        end
        
        ssss.subspec 'Protocol' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/DeviceInfoPage/Protocol/**'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/DeviceInfoPage/Model'
        end
        
        ssss.subspec 'Controller' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/DeviceInfoPage/Controller/**'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/DeviceInfoPage/Protocol'
        end
      end
      
      # 附近WiFi页面
      sss.subspec 'NearbyWifiPage' do |ssss|
        ssss.subspec 'Protocol' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/NearbyWifiPage/Protocol/**'
        end
        
        ssss.subspec 'View' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/NearbyWifiPage/View/**'
        end
        
        ssss.subspec 'Controller' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/NearbyWifiPage/Controller/**'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/NearbyWifiPage/Protocol'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/NearbyWifiPage/View'
        end
      end
      
      # NTP时区页面
      sss.subspec 'NTPTimezonePage' do |ssss|
        ssss.subspec 'Protocol' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/NTPTimezonePage/Protocol/**'
        end
        
        ssss.subspec 'Controller' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/NTPTimezonePage/Controller/**'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/NTPTimezonePage/Protocol'
        end
      end
      
      # 扫描过滤器页面
      sss.subspec 'ScannerFilterPage' do |ssss|
        ssss.subspec 'Protocol' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/ScannerFilterPage/Protocol/**'
        end
        
        ssss.subspec 'Controller' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/ScannerFilterPage/Controller/**'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/ScannerFilterPage/Protocol'
        end
      end
      
      # 设备服务器配置页面
      sss.subspec 'ServerForDevicePage' do |ssss|
        ssss.subspec 'Protocol' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/ServerForDevicePage/Protocol/**'
        end
        
        ssss.subspec 'View' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/ServerForDevicePage/View/**'
        end
        
        ssss.subspec 'Controller' do |sssss|
          sssss.source_files = 'MKScannerCommonModule/Classes/BleModule/Pages/ServerForDevicePage/Controller/**'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/ServerForDevicePage/Protocol'
          sssss.dependency 'MKScannerCommonModule/BleModule/Pages/ServerForDevicePage/View'
        end
      end
    end
  end
  
  # ==========================================================
  # MQTT模块
  # ==========================================================
  s.subspec 'MQTTModule' do |ss|
    
    ss.dependency 'MKBaseModuleLibrary'
    ss.dependency 'MKCustomUIModule'
    ss.dependency 'MLInputDodger'
    
    ss.dependency 'MKScannerCommonModule/Expand'
    
    # MQTT管理器
    ss.subspec 'Manager' do |sss|
      sss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Manager/**'
    end
    
    # MQTT基础控制器
    ss.subspec 'BaseController' do |sss|
      sss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/BaseController/**'
      sss.dependency 'MKScannerCommonModule/MQTTModule/Manager'
    end
    
    # MQTT页面
    ss.subspec 'Pages' do |sss|
            
      sss.dependency 'MKScannerCommonModule/MQTTModule/BaseController'
      
      # --------------------------------------------------------
      # 过滤相关页面
      # --------------------------------------------------------
      sss.subspec 'Filter' do |ssss|
        
        # 数据上传间隔页面
        ssss.subspec 'DataUploadIntervalPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/DataUploadIntervalPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/DataUploadIntervalPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/DataUploadIntervalPage/Protocol'
          end
        end
        
        # 重复数据过滤页面
        ssss.subspec 'DuplicateDataFilterPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/DuplicateDataFilterPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/DuplicateDataFilterPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/DuplicateDataFilterPage/Protocol'
          end
        end
        
        # 按广播名过滤页面
        ssss.subspec 'FilterByAdvNamePage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByAdvNamePage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByAdvNamePage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByAdvNamePage/Protocol'
          end
        end
        
        # 按iBeacon过滤页面
        ssss.subspec 'FilterByBeaconPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByBeaconPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByBeaconPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByBeaconPage/Protocol'
          end
        end
        
        # 按按钮过滤页面
        ssss.subspec 'FilterByButtonPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByButtonPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByButtonPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByButtonPage/Protocol'
          end
        end
        
        # 按MAC过滤页面
        ssss.subspec 'FilterByMacPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByMacPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByMacPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByMacPage/Protocol'
          end
        end
        
        # 按NanoBeacon过滤页面
        ssss.subspec 'FilterByNanoBeaconPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByNanoBeaconPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByNanoBeaconPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByNanoBeaconPage/Protocol'
          end
        end
        
        # 按其他设备过滤页面
        ssss.subspec 'FilterByOtherPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByOtherPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByOtherPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByOtherPage/Protocol'
          end
        end
        
        # 按PIR过滤页面
        ssss.subspec 'FilterByPirPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByPirPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByPirPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByPirPage/Protocol'
          end
        end
        
        # 按Raw Data过滤页面
        ssss.subspec 'FilterByRawDataPage' do |sssss|
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByBeaconPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByButtonPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByNanoBeaconPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByOtherPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByPirPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByTagPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByTLMPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByTofPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByUIDPage'
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByURLPage'
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByRawDataPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByRawDataPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByRawDataPage/Protocol'
          end
        end
        
        # 按Tag过滤页面
        ssss.subspec 'FilterByTagPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByTagPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByTagPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByTagPage/Protocol'
          end
        end
        
        # 按TLM过滤页面
        ssss.subspec 'FilterByTLMPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByTLMPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByTLMPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByTLMPage/Protocol'
          end
        end
        
        # 按ToF过滤页面
        ssss.subspec 'FilterByTofPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByTofPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByTofPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByTofPage/Protocol'
          end
        end
        
        # 按UID过滤页面
        ssss.subspec 'FilterByUIDPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByUIDPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByUIDPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByUIDPage/Protocol'
          end
        end
        
        # 按URL过滤页面
        ssss.subspec 'FilterByURLPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByURLPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/FilterByURLPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/FilterByURLPage/Protocol'
          end
        end
        
        # 上传数据选项页面
        ssss.subspec 'UploadDataOptionPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/UploadDataOptionPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Filter/UploadDataOptionPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Filter/UploadDataOptionPage/Protocol'
          end
        end
      end
      
      # --------------------------------------------------------
      # 管理蓝牙设备页面
      # --------------------------------------------------------
      sss.subspec 'ManageBleModules' do |ssss|
        
        # 公共页面
        ssss.subspec 'CommonPage' do |sssss|
          
          sssss.dependency 'MKScannerCommonModule/Expand'
          
          # 加速度数据页面
          sssss.subspec 'AccDataPage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/AccDataPage/Protocol/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/AccDataPage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/AccDataPage/Protocol'
            end
          end
          
          # 按钮DFU页面
          sssss.subspec 'ButtonDFUPage' do |ssssss|
            
            ssssss.subspec 'V1' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/ButtonDFUPage/V1/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/ButtonDFUPage/V1/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/ButtonDFUPage/V1/Protocol'
              end
            end
            
            ssssss.subspec 'V2' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/ButtonDFUPage/V2/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/ButtonDFUPage/V2/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/ButtonDFUPage/V2/Protocol'
              end
            end
          end
          
          # BXPC广告参数页面
          sssss.subspec 'BXPCAdvParamsPage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/BXPCAdvParamsPage/Protocol/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/BXPCAdvParamsPage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/BXPCAdvParamsPage/Protocol'
            end
          end
          
          # BXPD广告参数页面
          sssss.subspec 'BXPDAdvParamsPage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/BXPDAdvParamsPage/Protocol/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/BXPDAdvParamsPage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/BXPDAdvParamsPage/Protocol'
            end
          end
          
          # BXPS提醒页面
          sssss.subspec 'BXPSReminderPage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/BXPSReminderPage/Protocol/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/BXPSReminderPage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/BXPSReminderPage/Protocol'
            end
          end
          
          # 普通连接页面
          sssss.subspec 'NormalConnectedPage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/NormalConnectedPage/Protocol/**'
            end
            
            ssssss.subspec 'View' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/NormalConnectedPage/View/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/NormalConnectedPage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/NormalConnectedPage/Protocol'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/NormalConnectedPage/View'
            end
          end
          
          # 实时温湿度数据页面
          sssss.subspec 'RealTimeTHDataPage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/RealTimeTHDataPage/Protocol/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/RealTimeTHDataPage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/RealTimeTHDataPage/Protocol'
            end
          end
          
          # 远程提醒页面
          sssss.subspec 'RemoteReminderPage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/RemoteReminderPage/Protocol/**'
            end
            
            ssssss.subspec 'Model' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/RemoteReminderPage/Model/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/RemoteReminderPage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/RemoteReminderPage/Protocol'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/RemoteReminderPage/Model'
            end
          end
          
          # 温湿度采样率页面
          sssss.subspec 'THDataSampleRatePage' do |ssssss|
            ssssss.subspec 'Protocol' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/THDataSampleRatePage/Protocol/**'
            end
            
            ssssss.subspec 'Controller' do |sssssss|
              sssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/CommonPage/THDataSampleRatePage/Controller/**'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage/THDataSampleRatePage/Protocol'
            end
          end
        end
        
        # ========================================================
        # 蓝牙设备特定页面（依赖CommonPage）
        # ========================================================
        ssss.subspec 'BleDevicePage' do |sssss|
          
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/CommonPage'
          
          # BXPBCR特定页面
          sssss.subspec 'BXPBCR' do |ssssss|
            ssssss.subspec 'CRPage' do |sssssss|
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/EventAlarmPage'
              sssssss.subspec 'Model' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/CRPage/Model/**'
              end
              
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/CRPage/Protocol/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/CRPage/Model'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/CRPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/CRPage/Protocol'
              end
            end
            
            ssssss.subspec 'EventAlarmPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/EventAlarmPage/Protocol/**'
              end
              
              sssssss.subspec 'View' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/EventAlarmPage/View/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/EventAlarmPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/EventAlarmPage/Protocol'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBCR/EventAlarmPage/View'
              end
            end
          end
          
          # BXPBD特定页面
          sssss.subspec 'BXPBD' do |ssssss|
            ssssss.subspec 'BXPButton' do |sssssss|
              sssssss.subspec 'Model' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBD/BXPButton/Model/**'
              end
              
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBD/BXPButton/Protocol/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBD/BXPButton/Model'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBD/BXPButton/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPBD/BXPButton/Protocol'
              end
            end
          end
          
          # BXPC特定页面
          sssss.subspec 'BXPC' do |ssssss|
            ssssss.subspec 'CPage' do |sssssss|
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPC/HistoricalTHDataPage'
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPC/CPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPC/CPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPC/CPage/Protocol'
              end
            end
            
            ssssss.subspec 'HistoricalTHDataPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPC/HistoricalTHDataPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPC/HistoricalTHDataPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPC/HistoricalTHDataPage/Protocol'
              end
            end
          end
          
          # BXPD特定页面
          sssss.subspec 'BXPD' do |ssssss|
            ssssss.subspec 'AccParamsPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPD/AccParamsPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPD/AccParamsPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPD/AccParamsPage/Protocol'
              end
            end
            
            ssssss.subspec 'DPage' do |sssssss|
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPD/AccParamsPage'
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPD/DPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPD/DPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPD/DPage/Protocol'
              end
            end
          end
          
          # BXPS特定页面
          sssss.subspec 'BXPS' do |ssssss|
            ssssss.subspec 'AdvParamsPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/AdvParamsPage/Protocol/**'
              end
              
              sssssss.subspec 'View' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/AdvParamsPage/View/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/AdvParamsPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/AdvParamsPage/Protocol'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/AdvParamsPage/View'
              end
            end
            
            ssssss.subspec 'HallCountPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HallCountPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HallCountPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HallCountPage/Protocol'
              end
            end
            
            ssssss.subspec 'HistoricalTHDataPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HistoricalTHDataPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HistoricalTHDataPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HistoricalTHDataPage/Protocol'
              end
            end
            
            ssssss.subspec 'SPage' do |sssssss|
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/AdvParamsPage'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HallCountPage'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/HistoricalTHDataPage'
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/SPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/SPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPS/SPage/Protocol'
              end
            end
          end
          
          # BXPT特定页面
          sssss.subspec 'BXPT' do |ssssss|
            ssssss.subspec 'AccParamsPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/AccParamsPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/AccParamsPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/AccParamsPage/Protocol'
              end
            end
            
            ssssss.subspec 'MotionEventPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/MotionEventPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/MotionEventPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/MotionEventPage/Protocol'
              end
            end
            
            ssssss.subspec 'TPage' do |sssssss|
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/AccParamsPage'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/MotionEventPage'
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/TPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/TPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/BXPT/TPage/Protocol'
              end
            end
          end
          
          # PIR特定页面
          sssss.subspec 'Pir' do |ssssss|
            ssssss.subspec 'AdvParamsPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/AdvParamsPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/AdvParamsPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/AdvParamsPage/Protocol'
              end
            end
            
            ssssss.subspec 'PirPage' do |sssssss|
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/AdvParamsPage'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorDataPage'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorParamsPage'
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/PirPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/PirPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/PirPage/Protocol'
              end
            end
            
            ssssss.subspec 'SensorDataPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorDataPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorDataPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorDataPage/Protocol'
              end
            end
            
            ssssss.subspec 'SensorParamsPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorParamsPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorParamsPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Pir/SensorParamsPage/Protocol'
              end
            end
          end
          
          # ToF特定页面
          sssss.subspec 'Tof' do |ssssss|
            ssssss.subspec 'AdvParamsPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/AdvParamsPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/AdvParamsPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/AdvParamsPage/Protocol'
              end
            end
            
            ssssss.subspec 'SensorDataPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorDataPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorDataPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorDataPage/Protocol'
              end
            end
            
            ssssss.subspec 'SensorParamsPage' do |sssssss|
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorParamsPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorParamsPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorParamsPage/Protocol'
              end
            end
            
            ssssss.subspec 'TofPage' do |sssssss|
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/AdvParamsPage'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorDataPage'
              sssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/SensorParamsPage'
              sssssss.subspec 'Protocol' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/TofPage/Protocol/**'
              end
              
              sssssss.subspec 'Controller' do |ssssssss|
                ssssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/TofPage/Controller/**'
                ssssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/ManageBleModules/BleDevicePage/Tof/TofPage/Protocol'
              end
            end
          end
        end
      end
      
      # --------------------------------------------------------
      # 设置页面
      # --------------------------------------------------------
      sss.subspec 'Settings' do |ssss|
        
        # 广告信标页面
        ssss.subspec 'AdvBeaconPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/AdvBeaconPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/AdvBeaconPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/AdvBeaconPage/Protocol'
          end
        end
        
        # 通信页面
        ssss.subspec 'CommunicatePage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/CommunicatePage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/CommunicatePage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/CommunicatePage/Protocol'
          end
        end
        
        # 数据上报页面
        ssss.subspec 'DataReportPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/DataReportPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/DataReportPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/DataReportPage/Protocol'
          end
        end
        
        # 设备信息页面
        ssss.subspec 'DeviceInfoPage' do |sssss|
          sssss.subspec 'Model' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/DeviceInfoPage/Model/**'
          end
          
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/DeviceInfoPage/Protocol/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/DeviceInfoPage/Model'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/DeviceInfoPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/DeviceInfoPage/Protocol'
          end
        end
        
        # MQTT服务器页面
        ssss.subspec 'MqttServerPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/MqttServerPage/Protocol/**'
          end
          
          sssss.subspec 'View' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/MqttServerPage/View/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/MqttServerPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/MqttServerPage/Protocol'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/MqttServerPage/View'
          end
        end
        
        # 网络状态页面
        ssss.subspec 'NetworkStatusPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/NetworkStatusPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/NetworkStatusPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/NetworkStatusPage/Protocol'
          end
        end
        
        # NTP服务器页面
        ssss.subspec 'NTPServerPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/NTPServerPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/NTPServerPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/NTPServerPage/Protocol'
          end
        end
        
        # OTA页面
        ssss.subspec 'OTAPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/OTAPage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/OTAPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/OTAPage/Protocol'
          end
        end
        
        # 重连时间页面
        ssss.subspec 'ReconnectTimePage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/ReconnectTimePage/Protocol/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/ReconnectTimePage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/ReconnectTimePage/Protocol'
          end
        end
        
        # 按钮复位页面
        ssss.subspec 'ResetByButtonPage' do |sssss|
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/ResetByButtonPage/Protocol/**'
          end
          
          sssss.subspec 'View' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/ResetByButtonPage/View/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/ResetByButtonPage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/ResetByButtonPage/Protocol'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/ResetByButtonPage/View'
          end
        end
        
        # 系统时间页面
        ssss.subspec 'SystemTimePage' do |sssss|
          sssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/NTPServerPage'
          sssss.subspec 'Protocol' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/SystemTimePage/Protocol/**'
          end
          
          sssss.subspec 'View' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/SystemTimePage/View/**'
          end
          
          sssss.subspec 'Controller' do |ssssss|
            ssssss.source_files = 'MKScannerCommonModule/Classes/MQTTModule/Pages/Settings/SystemTimePage/Controller/**'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/SystemTimePage/Protocol'
            ssssss.dependency 'MKScannerCommonModule/MQTTModule/Pages/Settings/SystemTimePage/View'
          end
        end
      end
    end
  end
end
