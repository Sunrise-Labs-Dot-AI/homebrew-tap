cask "submaxxing" do
  version "2.24.1"
  sha256 "fcb70305a446764b30543373fa025769672181b1d3c5115604866093c449a5c8"

  url "https://github.com/Sunrise-Labs-Dot-AI/SubMaxxing/releases/download/v#{version}/SubMaxxing.dmg"
  name "SubMaxxing"
  desc "Monitor Claude and Codex usage from the menu bar"
  homepage "https://github.com/Sunrise-Labs-Dot-AI/SubMaxxing"

  depends_on macos: :ventura

  app "SubMaxxing.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/SubMaxxing.app"],
                   sudo: false
  end

  zap trash: "~/Library/Preferences/com.sunriselabs.submaxxing.plist"
end
