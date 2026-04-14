cask "blink" do
  version "0.0.10"
  sha256 "669b0af01ca47858ca1d22c20b067687c551d6b07fc603e27c3e3278e510a8cf"

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
