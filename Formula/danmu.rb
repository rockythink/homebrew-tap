class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.4.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.1/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "a24bf28780174faa8cc09c4b76936b698c7ad38224e4aaa7ee6c109d06163247"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.1/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "19e09ea05e5c350117f036da89a32d79c8d5f5d17452e9b948d6196d91672cb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.1/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "9da73f7ded5a1e212a9336ba78226dec42c66149c7c3c23425c2ac5fbc2a850a"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.1/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "7a80d083bd59f258ef48359be995c8117377b0d8787051fba9bcec9a99ed23fe"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
