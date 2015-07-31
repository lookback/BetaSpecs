Pod::Spec.new do |s|
  s.name = "Lookback"
  s.version = "1.1.0.6"
  s.summary = "Records screen, camera, touches and uploads to lookback.io. Useful for research, video bug reports, … Not appstore safe: See LookbackSafe"
  s.description = "                    Lookback is a tool and library for user experience testing\n                    that you can integrate into your app. Lookback records the\n                    iOS screen, the front-facing camera, microphone, metadata,\n                    touches and active views, and uploads it all in\n                    near-realtime to lookback.io where you can study and dive\n                    into the data. Example use cases:\n\n                  * User testing sessions. Instead of mounting web cams in your\n                    testing lab to record both the screen and your tester's\n                    reactions, let Lookback do the hard work for you.\n                  * Long-term usability study. Let a user record a week of\n                    using your app, and study trends, reactions and recurring\n                    problems.\n                  * Quality assurance. Record videos of found bugs, complete\n                    with a trace of how the tester reached it.\n                    \n                  Use this version of Lookback in versions of your app that you\n                  debug with or submit to testers, but not to Appstore: your app\n                  will be rejected. See the pod LookbackSafe for a version you\n                  can use in the AppStore.\n\n                  See some more examples over at http://lookback.io/examples.\n\n"
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
  s.source_files = "lookback/HD/Lookback.framework/Versions/A/Headers/*.h"
  s.resources = "lookback/Lookback-Resources/Lookback.bundle"
  s.preserve_paths = "lookback/HD/LookBack.framework"
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
    "VideoToolbox",
    "Lookback"
  ]
  s.xcconfig = {
    "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/Lookback/lookback/HD\""
  }
  s.requires_arc = false
end
