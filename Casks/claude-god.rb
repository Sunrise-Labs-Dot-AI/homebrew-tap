cask "claude-god" do
  version "2.22.2"
  sha256 "6181154cb1b5d11672ea1ac72ebb39ed60d5fe0c2784350932c890cd2b04e0a8"

  url "https://github.com/Lcharvol/Claude-God/releases/download/v#{version}/ClaudeGod.dmg"
  name "Claude God"
  desc "Monitor your Claude AI usage from the macOS menu bar"
  homepage "https://github.com/Lcharvol/Claude-God"

  depends_on macos: ">= :ventura"

  app "Claude God.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Claude God.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.lcharvol.claude-god.plist",
  ]
end
