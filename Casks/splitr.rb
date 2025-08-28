cask "splitr" do
  version "0.1.22"
  sha256 "8ecffe41c9553362656af811192a3027e06d95d1ac44e5047f2365ff35a58d4f"

  url "https://github.com/dmitrorlov/splitr/releases/download/v0.1.22/Splitr-v0.1.22-macos-arm64.zip"
  name "Splitr"
  desc "MacOS application for advanced L2TP VPN split tunneling."
  homepage "https://github.com/dmitryorlov/splitr"

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
