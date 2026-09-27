cask "blink" do
  version "0.0.13"
  sha256 "95d38e58c505b868e111f20dd185bfcb4904b666786ea08159262df1a0743521"

  url "https://github.com/benkoppe/Blink/releases/download/v#{version}/Blink.dmg"
  name "Blink"
  desc "Instant sapce switches"
  homepage "https://github.com/benkoppe/Blink"

  auto_updates true
  depends_on macos: :ventura

  app "Blink.app"

  zap trash: [
    "~/Library/Preferences/com.thekoppe.Blink.plist",
  ]
end
