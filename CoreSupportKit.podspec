#
# Be sure to run `pod lib lint CoreSupportKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CoreSupportKit'
  s.version          = '0.1.6'
  s.summary          = 'A short description of CoreSupportKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sunzhenglin/CoreSupportKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'acct<blob>=0xE7A9BAE781B5E699BAE883BD' => '393992811@qq.com' }
  s.source           = { :git => 'https://github.com/sunzhenglin/CoreSupportKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

   s.ios.deployment_target = '8.0'

   s.public_header_files = 'CoreSupportKit/Classes/CoreSupportKit.h'
   s.source_files = 'CoreSupportKit/Classes/CoreSupportKit.h'
#   s.source_files = 'CoreSupportKit/Classes/**/*.{h,m}'
#   s.resource_bundles = {
#     'CoreSupportKit' => ['CoreSupportKit/Classes/**/*.{png,xib}']
#   }
   s.subspec 'CWCarousel' do |ss|
     #'轮播图'
   ss.public_header_files = 'CoreSupportKit/Classes/CWCarousel/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/CWCarousel/**/*.{h,m}'
     
   end
   s.subspec 'JJImagePicker' do |ss|
     #'照片选择器'
   ss.public_header_files = 'CoreSupportKit/Classes/JJImagePicker/JJImagePicker/**/*.h','CoreSupportKit/Classes/JJImagePicker/TOCropViewController/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/JJImagePicker/**/*.{h,m}'
     
   end
   s.subspec 'LBXScan' do |ss|
     # '二维码'
     ss.public_header_files = 'CoreSupportKit/Classes/LBXScan/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/LBXScan/**/*.{h,m}'
     ss.dependency 'LBXScan' 
   end
   s.subspec 'TXImageCompressor' do |ss|
     # '图片压缩'
     ss.public_header_files = 'CoreSupportKit/Classes/TXImageCompressor/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/TXImageCompressor/**/*.{h,m}'
     
   end
   s.subspec 'TXPassWordView' do |ss|
     # '输入框'
   ss.public_header_files = 'CoreSupportKit/Classes/TXPassWordView/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/TXPassWordView/**/*.{h,m}'
     
   end
   s.subspec 'TXUseRuleView' do |ss|
     # '使用协议提示'
    ss.public_header_files = 'CoreSupportKit/Classes/TXUseRuleView/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/TXUseRuleView/**/*.{h,m}'
     
   end
   s.subspec 'WSDatePickerView' do |ss|
     # '时间选择器'
     ss.public_header_files = 'CoreSupportKit/Classes/WSDatePickerView/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/WSDatePickerView/**/*.{h,m}'
        ss.resource_bundles = {
          'WSDatePickerView' => ['CoreSupportKit/Classes/WSDatePickerView/**/*.{png,xib}']
        }
   end

   s.subspec 'YBPopupMenu' do |ss|
     # '仿微信+菜单'
     ss.public_header_files = 'CoreSupportKit/Classes/YBPopupMenu/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/YBPopupMenu/**/*.{h,m}'
     
   end
   s.subspec 'MyUICreate' do |ss|
     # '仿微信+菜单'
     ss.public_header_files = 'CoreSupportKit/Classes/MyUICreate/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/MyUICreate/**/*.{h,m}'
     
   end
   
   s.subspec 'LPDImagePickerController' do |ss|
     # '仿微信+菜单'
     ss.public_header_files = 'CoreSupportKit/Classes/LPDImagePickerController/**/*.h'
     ss.source_files = 'CoreSupportKit/Classes/LPDImagePickerController/**/*.{h,m}'
     ss.resource_bundles = {
       'LPDImagePickerController' => ['CoreSupportKit/Classes/LPDImagePickerController/**/*.{png,xib,strings}']
     }
      ss.dependency 'SDWebImage' 
   end
   
  
   
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

end
