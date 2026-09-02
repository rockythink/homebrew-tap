class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.4.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.0/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "2df8b8749f65d923ebc8604cd07654f737c89adf6929e47c1b82a3094befde93"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.0/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "808467d64f056fe732870d1265b255fb244445094a99d348c0dc9ec2d54aca54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.0/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "f1afd41eefb9d6d5b2ec25d49ebba543dcfca00c3d204644a829827e913cedb8"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.0/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "a5d13ddda23d86e97d26997f26088b59a7f402ac0e84b78c74f86a0cb01c89e4"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
