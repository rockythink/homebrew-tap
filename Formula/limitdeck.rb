class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.10/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "62eb469866a87024b8132fcd2aa11b8f2b8e48ca4125f651e253db3b1e94e09d"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.10/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "223d252bcf8700977ce2c6a6bd49cd9fbe05091807ab4f64d7684c3389261290"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.10/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd624e5e900e28fc4a2745a728f898cb7b56f63bbaaf6760c97131c781d96ad0"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.10/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da03eec5ab7116d08498823581fc537969028c284336de77dc273ef8246e94ef"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
