cask "blink" do
  version "0.0.7"
  sha256 "d353bc8057abcd71fb9cbcafa9b324f08ccf758e70f13b9fbd9fc75bb3bd3881"

  url "https://github.com/benkoppe/Blink/releases/download/v#{version}/Blink.dmg"
  name "Blink"
  desc "Instant sapce switcher"
  homepage "https://github.com/benkoppe/Blink"

  depends_on macos: ">= :ventura"

  app "Blink.app"

  zap trash: "~/Library/Preferences/com.thekoppe.Blink.plist"
end
