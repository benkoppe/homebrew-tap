cask "blink" do
  version "0.0.9"
  sha256 "5a0b117a5c6f68afc3de9b1fe293196c4ab4270dcb712be9b80fad33daee14be"

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
