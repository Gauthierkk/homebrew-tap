class Cmdloop < Formula
  desc "Minimal macOS menu bar app for managing cron jobs"
  homepage "https://github.com/Gauthierkk/cmd-loop"
  url "https://github.com/Gauthierkk/cmd-loop/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "096426ebbaaf1609d6b540d5604e35a5d4cd064e9ee628a99538c734f9c3d64f"
  license "MIT"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/cmdloop"
    prefix.install "com.cmdloop.plist"
  end

  def caveats
    <<~EOS
      To start cmdloop automatically on login:
        cp #{opt_prefix}/com.cmdloop.plist ~/Library/LaunchAgents/
        launchctl load ~/Library/LaunchAgents/com.cmdloop.plist

      Or just run it manually:
        cmdloop
    EOS
  end

  test do
    assert_predicate bin/"cmdloop", :executable?
  end
end
