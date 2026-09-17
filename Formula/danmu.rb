class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.5.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.0/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "15e248987d7dbe8965dd669e5b8a5e1e8dcfefc6e8a651aa704c3a6185cb46d3"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.0/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "da7b428f504175371fc875bcf9e6e4321e204f4b238e5d273bfbc3990e09087f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.0/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "8461f60f96bde8bc734e1e83282094dadb1632f33d51cf172e39581387e66145"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.5.0/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "33c7eca3b4ab8510cbd70224dfa0d07ca974a62f2172933a84d152ca90073020"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
