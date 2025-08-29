cask "splitr" do
  version "0.1.24"
  sha256 "2f5689c16eb91ce62675713f16b12089157439bc9bb2d2e7528e4bb4d2f8701d"

  url "https://github.com/dmitrorlov/splitr/releases/download/v0.1.24/Splitr-v0.1.24-macos-arm64.zip"
  name "Splitr"
  desc "MacOS application for advanced L2TP VPN split tunneling."
  homepage "https://github.com/dmitrorlov/splitr"

  # Requires macOS 11.0 or later (Big Sur)
  depends_on macos: ">= :big_sur"

  app "Splitr.app"

  # Remove quarantine attributes after installation
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Splitr.app"],
                   sudo: false
  end

  # Cleanup
  uninstall quit: "com.dmitryorlov.splitr"

  zap trash: [
    "~/Library/Application Support/Splitr",
    "~/Library/Caches/com.dmitryorlov.splitr",
    "~/Library/Logs/Splitr",
    "~/Library/Preferences/com.dmitryorlov.splitr.plist",
    "~/Library/Saved Application State/com.dmitryorlov.splitr.savedState",
  ]
end
