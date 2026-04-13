cask "blink" do
  version "0.0.8"
  sha256 "ec0203b28c37ec3ed7e1f03d5ab6482652afdab64cf54f14ab2a17c91c262cb2"

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
