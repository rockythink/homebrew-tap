class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.1/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "95fa7169c3e2ab26fd5716c2a7de1aeea1079b43afecec6240dfb2cc4d993bc9"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.1/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "fb512cb2c8b11389bd552535a1489d18ae6f92574bb948dd30a0c061aa1844a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.1/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "311b2e2c9e03895642064e389cec251bbaef28a40a338765a0b54a94b7a0b7cc"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.1/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02f5e4b1c5d080ff6da9c0913ecad5f0c3db040eeb1c0c8198d6e95ef36b5e3c"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
