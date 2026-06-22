cask "devtools" do
  version "0.1.3"
  sha256 "8f742cfe1566724c2f38458dbfe1b3f5d8788ac75f6514e7c38e8f39de67bd9b"

  url "https://github.com/Gauthierkk/devtools/releases/download/v0.1.3/DevTools_0.1.2_aarch64.dmg"
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
