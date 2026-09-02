class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.6/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "1372f612481c892387d8fccd228ce9da942ecf4fd61da9c2f1b44e88d875ed3d"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.6/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "e83545f0ad0793c0010065345717db6f737f7a71559f4f02617c55873976dd01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.6/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee70437a3896162c6dce89855622e854b0899c41bfe6eae97535dee0a5e3b3c1"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.6/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f84243d0a2ff6c69784d99fd8281fa248830a9aa1ae4a2031a4b3c2c2658c03d"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
