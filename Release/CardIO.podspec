Pod::Spec.new do |spec|
  spec.name             = 'CardIO'
  spec.version          = '6.0.0'
  spec.license          = { type: 'MIT', file: 'LICENSE.md' }
  spec.homepage         = 'https://www.card.io'
  spec.authors          = { 'CardIO' => 'support@paypal.com' }
  spec.summary          = 'Credit card scanning for mobile apps'
  spec.social_media_url = 'https://twitter.com/cardio'
  spec.source           = { :git => 'https://github.com/rocxteady/card.io-iOS-source/tree/xcode15', :tag => "iOS_#{spec.version}" }
  spec.platform         = :ios, '12.0'
  spec.ios.deployment_target = '12.0'
  spec.requires_arc     = true
  spec.source_files     = 'CardIO/*.h'
  spec.frameworks       = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
  spec.libraries        = 'c++'
  spec.vendored_libraries = 'CardIO/libCardIO.a', 'CardIO/libopencv_core.a', 'CardIO/libopencv_imgproc.a'
end
