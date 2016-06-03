
Pod::Spec.new do |s|
  s.name         = "JustuManage"
  s.version      = "1.0"
  s.summary      = "A short description of JustuManage."
  s.description  = <<-DESC
  						this project provide all kinds of categories for iOS developer
                   DESC

  s.homepage     = "https://github.com/engebei/JustuManage"
  
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author       = { "engebei" => "718149076@qq.com" }
  s.platform     = :ios
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "https://github.com/engebei/JustuManage.git", :tag => "1.0" }
  s.source_files  = "Class", "Class/**/*.{h,m}"
  s.exclude_files = "Class/Exclude"
  s.public_header_files = "Class/**/*.h"
  s.requires_arc = true
  s.frameworks = 'AFNetworking', 'SVProgressHUD', 'YYWebImage','IDMPhotoBrowser'
end
