class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.4.2"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.2/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "5b4baa89830c1204aec03c977acd10cb5210f44c5e8d76f57cfe2e24e95cb014"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.2/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "6725bb767e81e4fb518aec45db726564fe3ada09a3d86642893e530fb4a97595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.2/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "1e1154610cce8779492942b2a74452cf836e92224cbb54d64a81e8a065c24aab"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.2/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "4b29f83a016342bfcc81c28f912e89211d422c14a24cc372ea7efc5d31ca2180"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
