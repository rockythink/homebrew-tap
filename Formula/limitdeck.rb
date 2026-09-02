class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.2/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "59bdb1a8f94970a16e9bf5e82ab8f6a22abda18a0ac34932507a826e73752f96"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.2/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "14c5b96335c33567af928d33716a95ba8f2e9693e2ad434673007603cacce119"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.2/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a50b6c523a360c1f7a6c5800889ee5302ea0eca2f840c02f9de13dab98ced27"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.2/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b1e00815b6db1f36e87bfe2f9553019996d79ff013342564f3d997281c3f7fb"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
