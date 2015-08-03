Pod::Spec.new do |s|
  s.name = "LookbackSafe"
  s.version = "1.1.0.18"
  s.summary = "Records screen, camera, touches and uploads to lookback.io. Useful for research, video bug reports, …. Can be used in AppStore apps."
  s.description = "                    Lookback is a tool and library for user experience testing\n                    that you can integrate into your app. Lookback records the\n                    iOS screen, the front-facing camera, microphone, metadata,\n                    touches and active views, and uploads it all in\n                    near-realtime to lookback.io where you can study and dive\n                    into the data. Example use cases:\n\n                  * User testing sessions. Instead of mounting web cams in your\n                    testing lab to record both the screen and your tester's\n                    reactions, let Lookback do the hard work for you.\n                  * Long-term usability study. Let a user record a week of\n                    using your app, and study trends, reactions and recurring\n                    problems.\n                  * Quality assurance. Record videos of found bugs, complete\n                    with a trace of how the tester reached it.\n                    \n                  This version of Lookback is safe to use on the Apple AppStore,\n                  but this safety has heavey performance penalties. If you just\n                  want to use Lookback for video bug reports and similar\n                  internally while developing your app, consider using\n                  Lookback HD (the \"Lookback\" pod).\n\n                  See some more examples over at http://lookback.io/examples.\n\n"
  s.homepage = "http://lookback.io/"
  s.license = {
    :type => "Commercial",
    :text => "              All text and design is copyright © 2014 Lookback AB\n\n              All rights reserved. Terms of use as defined at http://lookback.io applies.\n"
  }
  s.authors = {
    "Joachim Bengtsson" => "nevyn@lookback.io"
  }
  s.social_media_url = "http://twitter.com/lookback"
  
  # Build settings
  s.dependency 'SSZipArchive'
  s.platforms = {
    :ios => "7.0"
  }
  s.source = {
    :http => "https://s3-eu-west-1.amazonaws.com/lookback-public/sdk/lookback-sdk-#{s.version}.zip"
  }
  s.source_files = "lookback/Safe/Lookback.framework/Versions/A/Headers/*.h"
  s.resources = "lookback/Lookback-Resources/Lookback.bundle"
  s.preserve_paths = "lookback/Safe/LookBack.framework"
  s.frameworks = [
    "AVFoundation",
    "AudioToolbox",
    "CoreVideo",
    "CoreMedia",
    "SystemConfiguration",
    "MediaPlayer",
    "MessageUI",
    "MobileCoreServices",
    "ImageIO",
    "QuartzCore",
    "Lookback"
  ]
  s.xcconfig = {
    "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/LookbackSafe/lookback/Safe\""
  }
  s.requires_arc = false
end
