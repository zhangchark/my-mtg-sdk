
Pod::Spec.new do |spec|


  spec.name         = 'ZhangCharkSDK'
  spec.version      = '5.5.0'
  spec.summary      = 'you can import my ad sdk via using this pod'
  spec.homepage     = 'https://github.com/zhangchark/my-mtg-sdk.git'
  spec.description  = <<-DESC   
    you can import my ad sdk via using this pod,you can import my ad sdk via using this pod  
                       DESC

  spec.license      = 'MIT'
  spec.author             = { 'zhangChark' => 'zhangchark@gmail.com' }
  spec.social_media_url   = 'https://www.facebook.com/chark.zhang'
  spec.platform     = :ios, '7.0'
  spec.source       = { :git => 'https://github.com/zhangchark/my-mtg-sdk.git', :tag => spec.version}


  spec.libraries = 'sqlite3', 'xml2','z'
  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit','AdSupport','StoreKit','QuartzCore','CoreTelephony','MobileCoreServices','Accelerate','AVFoundation','WebKit'

  spec.requires_arc = true
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}




  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.default_subspecs =  'NativeAd'

  spec.subspec 'NativeAd' do |ss|
  ss.ios.deployment_target = '7.0'
  ss.vendored_frameworks = 'Framework/NativeAd/*.framework'

  end


 
spec.subspec 'InterstitialVideoAd' do |ss|

  ss.ios.deployment_target = '7.0'
  ss.vendored_frameworks = 'Framework/InterstitialAd/*.framework'
  ss.dependency 'ZhangCharkSDK/NativeAd'

end


 spec.subspec 'RewardVideoAd' do |ss|
  ss.ios.deployment_target = '7.0'
  ss.vendored_frameworks = 'Framework/RewardVideoAd/*.framework'
  ss.dependency 'ZhangCharkSDK/NativeAd'


  end






  

 
end
