Pod::Spec.new do |s|
  s.name = "Lookback"
  s.version = "2.9.0"
  s.summary = "UX research tool: Records screen, camera, touches onto lookback.io. NOTE: This pod is AppStore safe and replaces the 'LookbackSafe' pod."
  s.description = <<-DESCRIPTION
Lookback is a tool and library for user experience research
that you can integrate into your app. Lookback records the
iOS screen, the front-facing camera, microphone, metadata,
touches and active views, and uploads it all in
near-realtime to lookback.io where you can study and dive
into the data. Example use cases:

* Remote research. Invite testers to test your app with just a
  Participate link, and no additional setp.
* User testing sessions. Instead of mounting web cams in your
  testing lab to record both the screen and your tester's
  reactions, let Lookback do the hard work for you.
* Long-term usability study. Let a user record a week of
  using your app, and study trends, reactions and recurring
  problems.

Head over to [the SDK guide on our website](http://help.lookback.io/installing-the-ios-sdk/configuring-lookback/configuring-lookback-participate) to get started!

NOTE: There used to be separate "Lookback" and "LookbackSafe" pods. This pod replaces both, and is
AppStore safe. Lookback HD is no more.

DESCRIPTION

  s.homepage = "http://lookback.io/"
  s.license = {
    :type => "Commercial",
    :file => "lookback/LICENSE.md"
  }
  s.authors = {
    "Nevyn Bengtsson" => "nevyn@lookback.io",
    "Brian Gerstle" => "bgerstle@lookback.io",
    "Pete Nelson" => "pete@lookback.io"
  }
  s.social_media_url = "http://twitter.com/lookback"


  # Subspecs and their build settings
  
  s.source = {
    :http => "https://s3-eu-west-1.amazonaws.com/lookback-public/sdk/lookback-sdk-2.9.0.10.g8e77635.zip"
  }
  s.documentation_url = "https://s3-eu-west-1.amazonaws.com/lookback-public/docs/ios/2.9.0.10.g8e77635/Lookback_h/index.html"
  s.platforms = {
    :ios => "9.0"
  }
  s.xcconfig = {
    "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/Lookback/Lookback/\"",
    "OTHER_LDFLAGS" => "$(inherited) -ObjC"
  }

  s.subspec "SelfTest" do |selftest|

    selftest.source_files = "lookback/Lookback.framework/Versions/A/Headers/*.h"
    selftest.resources = "lookback/Lookback-Resources/Lookback.bundle"
    selftest.preserve_paths = ["lookback/LICENSE.md", "lookback/Lookback.framework"]
    selftest.frameworks = [
      "AVFoundation",
      "Accelerate",
      "AudioToolbox",
      "CoreMedia",
      "CoreVideo",
      "ImageIO",
      "Lookback",
      "MediaPlayer",
      "MessageUI",
      "MobileCoreServices",
      "QuartzCore",
      "ReplayKit",
      "SystemConfiguration",
      "VideoToolbox",
      "WebKit"
    ]
    selftest.library    = 'stdc++'
  end
  
  s.subspec "Live" do |live|
    live.dependency 'LookbackWebRTC', '21258.0.1'
    live.dependency 'SocketRocket_Lookback', '~> 0.5.2'
    live.dependency 'Lookback/SelfTest'
    
    live.preserve_paths = ["lookback/LICENSE.md", "lookback/LookbackLive.framework"]
    live.frameworks = [
      "LookbackLive"
    ]
  end

end
