class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.8/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "67b0c317983ad41d33c9e4215c5874b5245ab312c887986386a9b3528f07ba11"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.8/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "b4bf6f8b63d636e9609c6716abfeb4023ed18cc9e568ba95e3fe242b4940adcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.8/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "460650eed4ca9297f316b4c3eb791ec7244588fa51e2ad7ec08b5dc88c986bec"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.8/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32b1ba9502165ce644593ddbe3d7f3b61bb64a10e023df6c45aa6efa2575a24c"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
