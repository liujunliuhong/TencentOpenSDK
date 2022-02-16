Pod::Spec.new do |spec|
    spec.name                   = 'TencentOpenSDK-iOS'
    spec.version                = '3.5.11' # 版本号和QQ的保持一致
    spec.homepage               = 'https://github.com/liujunliuhong/TencentOpenSDK'
    spec.source                 = { :git => 'https://github.com/liujunliuhong/TencentOpenSDK.git', :tag => spec.version }
    spec.summary                = 'Tencent open SDK'
    spec.license                = { :type => 'MIT', :file => 'LICENSE' }
    spec.author                 = { 'liujunliuhong' => '1035841713@qq.com' }
    spec.platform               = :ios, '9.0'
    spec.ios.deployment_target  = '9.0'
    spec.requires_arc           = true
    spec.vendored_frameworks 	= 'QQ_SDK/*.framework'
    spec.resource               = 'QQ_SDK/*.bundle'
    spec.frameworks             = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'WebKit'
    spec.libraries              = 'iconv', 'z', 'stdc++', 'sqlite3', 'c++'
    spec.pod_target_xcconfig    = {
        'OTHER_LDFLAGS' => '-all_load',
        'VALID_ARCHS' => 'x86_64 armv7 arm64'
    }
end
