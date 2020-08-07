cask "mailplane" do
  version "4.2.5,4826"
  sha256 "bc7947625fefa9556987cf9391838f0241f66b6085ab1c55e686ca70216f313e"

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name "Mailplane"
  homepage "https://mailplaneapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mailplane.app"

  zap trash: "~/Library/Preferences/com.mailplaneapp.Mailplane.plist"
end
