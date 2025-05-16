#
#  Be sure to run `pod spec lint POIKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "POIKit"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of POIKit."
  spec.description  = <<-DESC
POIKit
                   DESC

  spec.homepage     = "https://github.com/cxz137131304/POIKit"

  spec.license      = "MIT (POIKit)"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "karl.chen" => "137131304@qq.com" }

  spec.platform     = :ios, "13.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  # spec.visionos.deployment_target = "1.0"

  spec.source       = { :path => '.' }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
  
  spec.requires_arc = true

  spec.public_header_files = "Classes/**/*.h"
  
  spec.dependency "RTRootNavigationController"
  spec.dependency "AFNetworking"
  spec.dependency "Masonry"
  spec.dependency "SDWebImage"
  spec.dependency "IQKeyboardManager"
  spec.platform = :ios, '13.0'
  
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.swift_version = '5.0'

  spec.ios.vendored_frameworks = 'Frameworks/*.framework'
  spec.vendored_frameworks = '*.framework'
  
end
