class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.3/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "e5328566294e45549f39c4d26f7ff8171e180318db06c2519872009601ade0f3"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.3/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "4011a8b4ad28e5ec31ee39de6892402592d5e1f68cbb779cec1e9baad68fde08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.3/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd63c2055486c2a65d31dab58e5a270601a28072332d8d0fce098c9766dbe0ad"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.3/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1db1e46dd192b520dc182756e89fa7240e77b81f920775c096ac97b8e82a26a9"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
