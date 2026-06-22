cask "devtools" do
  version "0.1.3"
  sha256 "f0f268d08b20aabfd5d4793e62aa2ab42e2625e1745d0b15bdeb2c5365aae60a"

  url "https://github.com/Gauthierkk/devtools/releases/download/v0.1.3/DevTools_0.1.3_aarch64.dmg"
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
