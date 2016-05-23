Pod::Spec.new do |s|
  s.name = "LookbackSafe"
  s.version = "1.3.0"
  s.summary = "Records screen, camera, touches and uploads to lookback.io. Useful for research, video bug reports, …. Can be used in AppStore apps."
  s.description = <<-DESCRIPTION
Lookback is a tool and library for user experience testing
that you can integrate into your app. Lookback records the
iOS screen, the front-facing camera, microphone, metadata,
touches and active views, and uploads it all in
near-realtime to lookback.io where you can study and dive
into the data. Example use cases:

* User testing sessions. Instead of mounting web cams in your
testing lab to record both the screen and your tester's
reactions, let Lookback do the hard work for you.
* Long-term usability study. Let a user record a week of
using your app, and study trends, reactions and recurring
problems.
* Quality assurance. Record videos of found bugs, complete
with a trace of how the tester reached it.

This version of Lookback is safe to use on the Apple AppStore,
but this safety has heavy performance penalties. If you just
want to use Lookback for video bug reports and similar
internally while developing your app, consider using
Lookback HD (the "Lookback" pod).

See some more examples over at http://lookback.io/examples.
DESCRIPTION

  s.homepage = "http://lookback.io/"
  s.license = {
    :type => "Commercial",
    :file => "LICENSE.md"
  }
  s.authors = {
    "Nevyn Bengtsson" => "nevyn@lookback.io",
    "Brian Gerstle" => "bgerstle@lookback.io",
    "Pete Nelson" => "pete@lookback.io"
  }
  s.social_media_url = "http://twitter.com/lookback"

  # Build settings
  s.dependency 'PDKTZipArchive'
  s.platforms = {
    :ios => "8.0"
  }
  s.documentation_url = "https://s3-eu-west-1.amazonaws.com/lookback-public/docs/ios/1.3.0.7.g5f35348/Lookback_h/index.html"
  s.source = {
    :http => "https://s3-eu-west-1.amazonaws.com/lookback-public/sdk/lookback-sdk-1.3.0.7.g5f35348.zip"
  }
  s.source_files = "lookback/Safe/Lookback.framework/Versions/A/Headers/*.h"
  s.resources = "lookback/Lookback-Resources/Lookback.bundle"
  s.preserve_paths = "lookback/Safe/Lookback.framework"
  s.frameworks = [
    "Accelerate",
    "AVFoundation",
    "AudioToolbox",
    "VideoToolbox",
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
    "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/LookbackSafe/Lookback/Safe\"",
    "OTHER_LDFLAGS" => "$(inherited) -ObjC"
  }
  s.requires_arc = false
end
