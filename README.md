# Homebrew Tap for LlamaMate

Install [LlamaMate](https://github.com/Ito-69/llama.cpp_install_on_macos) via Homebrew Cask.

## Install

```bash
brew tap Ito-69/llamamate
brew install --cask llamamate
```

Then open `LlamaMate` from `/Applications` (right-click → Open the first time, because the app is ad-hoc signed without an Apple Developer account).

## Update

```bash
brew upgrade --cask llamamate
```

## Uninstall

```bash
brew uninstall --cask llamamate
```

This removes the app, LaunchAgent, logs, and Application Support directory. Models and llama.cpp binaries in `~/.local/bin` and `~/models` are kept — use the in-app `Uninstall...` menu item to remove them as well.
