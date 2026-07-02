class Cmdloop < Formula
  desc "Minimal macOS menu bar app for managing cron jobs"
  homepage "https://github.com/Gauthierkk/cmd-loop"
  url "https://github.com/Gauthierkk/cmd-loop/releases/download/v1.6.0/cmdloop-1.6.0-macos-universal.tar.gz"
  sha256 "6a8b662d86ef5d67a682675ebe3b063593afd44b754b3d4df3d3515b435f130a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cmdloop"
    prefix.install "com.cmdloop.plist"
  end

  def caveats
    <<~CAVEATS
      To start cmdloop automatically on login:
        cp #{opt_prefix}/com.cmdloop.plist ~/Library/LaunchAgents/
        launchctl load ~/Library/LaunchAgents/com.cmdloop.plist

      Or just run it manually:
        cmdloop
    CAVEATS
  end

  test do
    assert_predicate bin/"cmdloop", :executable?
  end
end
