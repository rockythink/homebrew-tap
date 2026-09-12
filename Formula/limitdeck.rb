class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.12/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "13cc49724ab4f43f8c08af62a11fffb86b3b22b70ba26ac5c1bb3153fc41c3a6"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.12/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "d0025328993afb692a7cf7127de7d4817f2d5add08aa2d4672f644042b5214f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.12/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5020f908d7cc96d5a4f3a5c2e16e56f65c15bbc911ea98117eab10ea793e0e0"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.12/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a050c3a56d0436e08a1c86c091d8b2234d3607714ed5dd5bace434d0d04f6b2f"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
