class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.5/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "b237ccf4fc86b724e664c1ae4c1a9eb3a32204a4ff450cae4b2bdc46eb376458"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.5/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "81941c34fe12c58ade264c218626117442dd529a992c52dfc2ce6e56e7b1b209"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.5/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5867a08503694a026ae481499cb0c51b36df05e40e450cc2527aab6271e694f4"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.5/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5a56d7b815b3f92585cca9c98fbb7dfd762db82e33cf037dc715c7f668334f4"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
