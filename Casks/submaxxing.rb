cask "submaxxing" do
  version "2.24.0"
  sha256 "dfd87c87dcc58ab45a2b2fae5fe8651b74467d0fea362abfbd2d991f4511d853"

  url "https://github.com/Sunrise-Labs-Dot-AI/SubMaxxing/releases/download/v#{version}/SubMaxxing.dmg"
  name "SubMaxxing"
  desc "Monitor Claude and Codex usage from the macOS menu bar"
  homepage "https://github.com/Sunrise-Labs-Dot-AI/SubMaxxing"

  depends_on macos: ">= :ventura"

  app "SubMaxxing.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/SubMaxxing.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.sunriselabs.submaxxing.plist",
  ]
end
