cask "splitr" do
  version "0.1.15"
  sha256 "abc123def456..." # Will be real SHA256 hash

  url "https://github.com/dmitryorlov/splitr/releases/download/v#{version}/Splitr-v#{version}-macos-arm64.zip"
  name "Splitr"
  desc "MacOS application for advanced split tunneling for L2TP VPN connections"
  homepage "https://github.com/dmitryorlov/splitr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Splitr.app"

  # No need for postflight xattr removal in official repo
  # Homebrew handles this automatically

  uninstall quit: "com.dmitryorlov.splitr"

  zap trash: [
    "~/Library/Application Support/Splitr",
    "~/Library/Caches/com.dmitryorlov.splitr",
    "~/Library/Logs/Splitr",
    "~/Library/Preferences/com.dmitryorlov.splitr.plist",
    "~/Library/Saved Application State/com.dmitryorlov.splitr.savedState",
  ]
end
