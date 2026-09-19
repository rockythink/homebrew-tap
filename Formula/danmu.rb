class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.5.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.1/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "098a002b75401361425d52a830b0899e07c17543756010284e3051a04fcebb38"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.1/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "31f39f7910f757b36a0e4567a95638115e7c8c18fa290c0acd46dfe0850e999a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.1/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "bee1657cc2126a89729eefb85c1bc564951df9f7afcfb238cc882dcd4c361f5a"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.1/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "da83da8fa58ed754bee4d8cc8a4717c856169c02e2fad1dee57764a4c05b8a24"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
