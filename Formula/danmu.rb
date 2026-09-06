class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.4.4"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.4/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "3eb08765bca97c24e9a6f03701064774800da3fdec20f8b8f2fadc032ef12577"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.4/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "2c65e3c6b6d9ffbdd2ca5985ab70c018e2a80a226a37130eefec46eefaa85f15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.4/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "ad25c4062350d86c52a1bd146599bc6fbe798ad821a06e6e4f7019d0591994c6"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.4/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "cfcb64114075cb47edad6e1ffd18b3db12262afcb1fcb9119da9d5070da6bf2e"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
