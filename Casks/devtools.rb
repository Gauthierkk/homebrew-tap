cask "devtools" do
  version "0.1.2"
  sha256 "5c68e3157ec255e3072a368ccad31a0f42e0c258d09f8bb59bcc0df71b5a0e3c"

  url "https://github.com/Gauthierkk/devtools/releases/download/v0.1.2/DevTools_0.1.2_aarch64.dmg"
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
