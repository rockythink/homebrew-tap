class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.7/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "8af453f041bfd86af017ae616769ab07eec5742119e8b3a89cc88fa639f20aba"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.7/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "836a768568adb6a6f89d08072553f2499d4f64be15a95dafa130b8bb71306ce4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.7/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0dac4d28049c542802153244e5dd784d50a7cd06e8c04b4f0a497c00a63a61ec"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.7/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c39e5c32abc68016389a340cacabf707028b9fb0f7e79c383a2cc4e6b17c6a0"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
