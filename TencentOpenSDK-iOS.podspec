#
#  Be sure to run `pod spec lint LimitedInput.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name                     = 'TencentOpenSDK-iOS'
  spec.version                  = '3.5.10' # 版本号和QQ的保持一致
  spec.homepage                 = 'https://github.com/liujunliuhong/TencentOpenSDK'
  spec.source                   = { :git => 'https://github.com/liujunliuhong/TencentOpenSDK.git', :tag => spec.version }
  spec.summary                  = 'Tencent open SDK'
  spec.license                  = { :type => 'MIT', :file => 'LICENSE' }
  spec.author                   = { 'liujunliuhong' => '1035841713@qq.com' }
  spec.platform                 = :ios, '10.0'
  spec.ios.deployment_target    = '10.0'
  # spec.module_name              = 'TencentOpenApi' # 模块名和微信保持一致
  spec.requires_arc             = true
  spec.static_framework         = true
  # spec.swift_version            = '5.0'
  spec.ios.vendored_frameworks 	= 'Sources/TencentOpenApi/*.framework'
  spec.resource                 = 'Sources/TencentOpenApi/*.bundle'
  spec.frameworks               = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'WebKit'
  spec.libraries                = 'iconv', 'z', 'stdc++', 'sqlite3', 'c++'

  spec.pod_target_xcconfig      = {
    'VALID_ARCHS' => 'x86_64 armv7 arm64',
    'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/Sources/'
  } 
end
