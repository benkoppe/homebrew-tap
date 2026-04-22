cask "blink" do
  version "0.0.12"
  sha256 "afdb6ac094c3b72b74e7040fb31b5a75728c95632c25341ea876308ea629b0d8"

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
