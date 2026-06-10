cask "devtools" do
  version "0.1.1"
  sha256 "c9ad29b6e2bb94c0104b01aa44535998bfb6eff2945260c165ebac1988898571"

  url "https://github.com/Gauthierkk/devtools/releases/download/v0.1.1/DevTools_0.1.0_aarch64.dmg"
  name "DevTools"
  desc "Modular macOS-first developer toolkit"
  homepage "https://github.com/Gauthierkk/devtools"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "DevTools.app"

  zap trash: [
    "~/Library/Application Support/com.devtools.studio",
    "~/Library/Caches/com.devtools.studio",
  ]
end
