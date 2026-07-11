cask "llamamate" do
  version "2.3.9"
  sha256 "a5e252136257e9a6fae866a91ad94a45e8578b3deda4f8b0f62fb70c9d0a7394"

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

  zap trash: [
    "~/Library/Application Support/LlamaMate",
    "~/Library/LaunchAgents/com.llama.cpp.server.plist",
    "~/Library/Logs/llama-server.err.log",
    "~/Library/Logs/llama-server.log",
  ]

  caveats <<~EOS
    LlamaMate is a menu bar app for llama.cpp. After install:
      • Open LlamaMate from /Applications
      • First launch may require right-click → Open (ad-hoc signed)
      • Click "Install" in the welcome dialog to download llama.cpp + a model
  EOS
end
