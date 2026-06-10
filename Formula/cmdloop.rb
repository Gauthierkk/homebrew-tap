class Cmdloop < Formula
  desc "Minimal macOS menu bar app for managing cron jobs"
  homepage "https://github.com/Gauthierkk/cmd-loop"
  url "https://github.com/Gauthierkk/cmd-loop/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "32dd6db92f4f5ea3470d323a9cd62d969899a5ed098b5381143044f577b7c55c"
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
