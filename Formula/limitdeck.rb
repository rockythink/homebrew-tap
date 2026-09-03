class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.9/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "7b5e9ee28e0f5b0c7869f1bf6ca2e64c75c0bff5769635f72d6e7322943a9dd9"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.9/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "19d6266ed31f66a7a6be621cb1bc1280b42316683d0d244d2856bac037c1de90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.9/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b090cb3453f3ea145ab31d8b2113cc410aa764bce4fe8994933b7a59673834c4"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.9/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f564a87530bca757e0b8d1790892b7229f5b69af2641ba9b82ab2abf5167438c"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
