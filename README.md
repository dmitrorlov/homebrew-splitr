# Homebrew Tap for Splitr

This is the official Homebrew tap for [Splitr](https://github.com/dmitryorlov/splitr), MacOS application for advanced L2TP VPN split tunneling.

## Installation

To install Splitr using Homebrew:

```bash
# Add the tap
brew tap dmitryorlov/splitr

# Install Splitr
brew install --cask splitr
```

### One-liner installation
```bash
brew install --cask dmitryorlov/splitr/splitr
```

## Updating

To update Splitr to the latest version:

```bash
brew upgrade splitr
```

## Uninstalling

To completely remove Splitr and all its files:

```bash
# Remove the application
brew uninstall --cask splitr

# Remove all user data and preferences (optional)
brew uninstall --zap --cask splitr

# Remove the tap (optional)
brew untap dmitryorlov/splitr
```

## Features

- Automatic quarantine attribute removal (no need for manual `xattr` commands)
- Proper app bundle installation to `/Applications`
- Clean uninstallation with preference cleanup
- Automatic updates through Homebrew

## Requirements

- macOS 11.0 (Big Sur) or later
- Apple Silicon (ARM64) Mac

## Manual Installation Alternative

If you prefer not to use Homebrew, you can still download releases manually from the [GitHub releases page](https://github.com/dmitryorlov/splitr/releases).

## Issues

If you encounter any issues with the Homebrew installation, please report them in the main [Splitr repository](https://github.com/dmitryorlov/splitr/issues).
