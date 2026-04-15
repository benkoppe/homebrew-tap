cask "blink" do
  version "0.0.11"
  sha256 "c15198df7a583f151117588e84844f07b8e341e69fc9be1f3eec30a1014b9623"

  url "https://github.com/benkoppe/Blink/releases/download/v#{version}/Blink.dmg",
      verified: "github.com/benkoppe/Blink/"
  name "Blink"
  desc "Instant sapce switches"
  homepage "https://github.com/benkoppe/Blink"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Blink.app"

  zap trash: [
    "~/Library/Preferences/com.thekoppe.Blink.plist",
  ]
end
