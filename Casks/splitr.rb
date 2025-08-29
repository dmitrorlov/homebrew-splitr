cask "splitr" do
  version "0.1.23"
  sha256 "e20952794f1169ca0c401adafd63ec9eb5404bd8bf6257c48693913d92924142"

  url "https://github.com/dmitrorlov/splitr/releases/download/v0.1.23/Splitr-v0.1.23-macos-arm64.zip"
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
