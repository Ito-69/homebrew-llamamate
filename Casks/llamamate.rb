cask "llamamate" do
  version "2.5.2"
  sha256 "19065f5366d175cf8ebed2920815498cecd5801e13b46c09b111fe9d9fc7c973"

  url "https://github.com/Ito-69/llama.cpp_install_on_macos/releases/download/v#{version}/LlamaMate-#{version}.dmg"
  name "LlamaMate"
  desc "Menu bar app for llama.cpp — browse, download, run local LLMs"
  homepage "https://github.com/Ito-69/llama.cpp_install_on_macos"

  livecheck do
    url :url
    strategy :github_latest_release
  end

  depends_on macos: :ventura

  app "LlamaMate.app"

  uninstall launchctl: "com.llama.cpp.server",
            quit:      "com.llamamate.app"

  zap trash: [
    "~/.config/llama",
    "~/.local/bin/llama-server-start.sh",
    "~/Library/Application Support/LlamaMate",
    "~/Library/LaunchAgents/com.llama.cpp.server.plist",
    "~/Library/Logs/llama-server.err.log",
    "~/Library/Logs/llama-server.log",
    "~/Library/Preferences/com.llamamate.app.plist",
  ]

  caveats <<~EOS
    LlamaMate is a menu bar app for llama.cpp. After install:
      • Open LlamaMate from /Applications
      • First launch: if macOS blocks the app, open System Settings →
        Privacy & Security and click "Open Anyway" (the app is ad-hoc signed)
      • Click "Install" in the welcome dialog to download llama.cpp + a model
  EOS
end
