

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "SNShadowSDK"
  spec.version      = "1.0.0"
  spec.summary      = "Helper Framework to generate wonderful shadow in Swift iOS."
  spec.description  = "Helper Framework to generate wonderful shadow in Swift iOS. Simple and 3D shadow for UIView in Swift iOS"
  spec.homepage     = "https://github.com/sabarics/SNShadow"
  spec.license      = "MIT"
  spec.author             = { "sabari" => "sabari.cs10@gmail.com" }
  # Or just: spec.author    = "sabari"
  # spec.authors            = { "sabari" => "sabari.cs10@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/sabari"
  spec.source       = { :git => "https://github.com/sabarics/SNShadow.git", :tag => "#{spec.version}" }
  spec.source_files  = "SNShadowSDK/**/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"
  spec.swift_version = "5"
  spec.platform     = :ios, "12.0"
end
