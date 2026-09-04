class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.11/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "5a0d07013a5d615ae1165971e62fde666b7d68e0195ccdb4d35ecd782145ed6d"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.11/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "224054c5eb0dc82ea134cee78b3da54363956a95a589cb73000567291162097f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.11/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc6d836753d307b4ceb5fb3f05bf1977fdb14fc63e41650838a637b138668015"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.11/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a72b4a44dbb39daec3fd55d57f364829d6c046f400d6161181be424e266d978"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
