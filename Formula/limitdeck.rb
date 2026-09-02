class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.4/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "0ce1ff9628713d471222a2f59f608fcdbbcfac28a50a65980c26a18962888067"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.4/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "8f56290cff450c0ad9850e3947dc3103fae123c77993610cf2dc8a999f51b98e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.4/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4268bf8a3629ca550fd217cce5bd76193d3ebaf2dee40e4def9d5d382f2471c7"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.4/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45084f3c259515d274a5795dccf1260f45e3586dc41e872a71b65f038ce2fd5b"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
