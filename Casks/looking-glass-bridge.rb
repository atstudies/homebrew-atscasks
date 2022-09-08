cask "looking-glass-bridge" do
  arch arm: "m1"

  version "2.0.6"
  sha256 :no_check

  # sha256 "66d1df8fbc90743df2010c56aca7a5ebc4422498cdf146b845c8aab6698d9a15"

  url "https://dhtk4bwj5r21z.cloudfront.net/HoloPlayService/PublicLinks/#{version}/LookingGlassBridge-#{version}_#{arch}.pkg",
      verified: "https://dhtk4bwj5r21z.cloudfront.net/HoloPlayService"
  name "looking-glass-bridge"
  desc "Required for Looking Glass applications and development tools"
  homepage "https://lookingglassfactory.com/"

  pkg "LookingGlassBridge-#{version}_#{arch}.pkg"

  uninstall pkgutil: [
    "com..LookingGlassBridge.LookingGlassBridgePkg",
    "com.LookingGlassBridge.LookingGlassBridgePkg",
  ]
end
