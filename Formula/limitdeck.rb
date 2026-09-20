class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.13/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "86db99025b40f6beddad6c2f806b5a907d0bc45425c96cf027aba1cf56a94e27"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.13/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "150ae66bce95b8ca67bfae19b5b53516e2cde5a6a6ba69d05358329c499324b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.13/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdf52d5d1c82eee4571ee619f89c6af3f2dbe5c7f1ab3193969c1a2c1a4731e1"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.13/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ad41129739e942bc4fe68ed7bb317d7a27726a2546f7a97499636d633052efa"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
