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
  spec.requires_arc             = true
  spec.vendored_frameworks 	    = 'Sources/TencentOpenAPI.framework'
  spec.resource                 = 'Sources/TencentOpenApi_IOS_Bundle.bundle'

  spec.frameworks               = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'WebKit'
  spec.libraries                = 'iconv', 'z', 'stdc++', 'sqlite3', 'c++'

  # QQ的SDK里面竟然把头文件的名称拼写错，QQ垃圾
  spec.prepare_command = <<-EOF
  rm -rf Sources/TencentOpenAPI.framework/Headers/TencentOpenApiUmbrellaHeader.h
  touch Sources/TencentOpenAPI.framework/Headers/TencentOpenAPI.h
  cat <<-EOF > Sources/TencentOpenAPI.framework/Headers/TencentOpenAPI.h
  // 这个文件是我自己创建的，QQ原来的'TencentOpenApiUmbrellaHeader.h'里，把'#import "SDKDef.h"'拼写错了
  #import "QQApiInterface.h"
  #import "QQApiInterfaceObject.h"
  #import "sdkdef.h"
  #import "TencentOAuth.h"
  \EOF

  rm -rf Sources/TencentOpenAPI.framework/Headers/*.modulemap
  rm -rf Sources/TencentOpenAPI.framework/Modules
  mkdir Sources/TencentOpenAPI.framework/Modules
  touch Sources/TencentOpenAPI.framework/Modules/module.modulemap
  cat <<-EOF > Sources/TencentOpenAPI.framework/Modules/module.modulemap
  framework module TencentOpenAPI {
    umbrella header "TencentOpenAPI.h"
    export *
    module * { export * }
  }
  \EOF

  EOF

  spec.pod_target_xcconfig      = {
    'VALID_ARCHS' => 'x86_64 armv7 arm64',
    # 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/Sources/'
  }
end
