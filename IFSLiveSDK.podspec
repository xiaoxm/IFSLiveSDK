#
# Be sure to run `pod lib lint IFSLiveSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IFSLiveSDK'
  s.version          = '1.0.2'
  s.summary          = '粉丝网直播SDK'
  s.homepage         = 'https://github.com/xiaoxm/IFSLiveSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'herui' => 'herui@ifensi.com' }
  s.source           = { :git => 'https://github.com/xiaoxm/IFSLiveSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'IFSLiveSDK/*.framework/Headers/*.{h}'

  s.vendored_frameworks = 'IFSLiveSDK/*.framework'
  
  s.public_header_files = 'IFSLiveSDK/IFSLiveSDK.framework/Headers/IFSLiveSDK.h'

  s.resource_bundles = {
      'IFSLiveSDK' => ['IFSLiveSDK/Assets/*.png']
  }
  
  #TXIMSDK_iOS 这个库不支持i386，所以需要设置
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7 armv7s x86_64' }


  s.frameworks = 'UIKit', 'Foundation'
  
  s.dependency 'Masonry', '~> 1.1.0'
  s.dependency 'SDWebImage', '~> 3.7.2'
  s.dependency 'MJRefresh', '~> 3.1.15.7'
  s.dependency 'MJExtension', '~> 3.0.15.1'
  s.dependency 'ReactiveObjC', '~> 3.1.0'
  s.dependency 'TXIMSDK_iOS', '~> 4.6.51'
  s.dependency 'TXLiteAVSDK_Player', '~> 6.8.8000'

end
