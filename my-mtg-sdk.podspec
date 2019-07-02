#
#  Be sure to run `pod spec lint chark_learning_cocoapods.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

#  spec.name         = 'chark_learning_cocoapods'
  spec.name          = 'my-mtg-sdk'
  spec.version      = '5.4.1'
  spec.summary      = 'you can import my ad sdk via using this pod'
  spec.homepage     = 'https://github.com/zhangchark/my-mtg-rv.git'
  spec.description  = <<-DESC   
    you can import my ad sdk via using this pod,you can import my ad sdk via using this pod  
                       DESC
 



  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = 'MIT'





  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.author             = { 'zhangChark' => 'zhangchark@gmail.com' }
  spec.social_media_url   = 'https://www.facebook.com/chark.zhang'
 




  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  spec.platform     = :ios, '7.0'





  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => 'https://github.com/zhangchark/my-mtg-sdk.git', :tag => spec.version}






  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.subspec 'NativeAd' do |ss|

  ss.source_files        = 'Framework/NativeAd'
  ss.public_header_files = 'Framework/NativeAd/MTGSDK.framework/Versions/A/Headers/*.h'

  end

  





  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # none





  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit','AdSupport','StoreKit','QuartzCore','CoreTelephony','MobileCoreServices','Accelerate','AVFoundation','WebKit'

  spec.libraries = 'sqlite3', 'xml2','z'





  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.requires_arc = true
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}

end
