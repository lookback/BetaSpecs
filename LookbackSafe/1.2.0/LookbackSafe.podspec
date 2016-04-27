Pod::Spec.new do |s|
  s.name = "LookbackSafe"
  s.version = "1.2.0"
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

Use this version of Lookback in versions of your app that you
debug with or submit to testers, but not to Appstore: your app
will be rejected. See the pod LookbackSafe for a version you
can use in the AppStore.

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
  s.documentation_url = "https://s3-eu-west-1.amazonaws.com/lookback-public/docs/ios/1.2.0.104.g49c2cc0/Lookback_h/index.html"
  s.source = {
    :http => "https://s3-eu-west-1.amazonaws.com/lookback-public/sdk/lookback-sdk-1.2.0.104.g49c2cc0.zip"
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
