class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.4.5"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.5/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "1fbf3154d02a7de8f6031eae191b1f753ff952097e938c61751f8d2cff22dfc1"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.5/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "4065dd05543cd3eb485567069813c08c60a8434d2d031c5a4b80fe278dc13eab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.5/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "3c839eedf9fd502c8a77446871d966c45480a1eee5b1eabf5f97f86dc4bde5de"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.5/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "759129e4741e1e92bf1df4b79b69eec0bda7a68f4993ffb7bde5d61394ab0223"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
