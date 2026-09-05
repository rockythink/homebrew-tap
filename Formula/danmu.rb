class Danmu < Formula
  desc "Live interaction console for knowledge streamers"
  homepage "https://github.com/rockythink/shisui-danmu"
  version "0.4.3"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.3/shisui-danmu-macos-aarch64.tar.gz"
      sha256 "fab07f2fdcc1fea1e732bdc7aebeeb87956f67d1f41f440c931201b8d707a9aa"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.3/shisui-danmu-macos-x86_64.tar.gz"
      sha256 "9c2fed1dd2f6f58dfae05c41ffada3e3ef354a3c6c8f5959d3cf68426e752cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.3/shisui-danmu-linux-aarch64.tar.gz"
      sha256 "62c5a0c30b88c032c0b16e29e26252d39d850ddaf180b83fc781f29c91999885"
    else
      url "https://github.com/rockythink/shisui-danmu/releases/download/v0.4.3/shisui-danmu-linux-x86_64.tar.gz"
      sha256 "e614d9f47ea4bd44da62ea675ec72d04cdf6b06f4284cf5b9d49b508cb4abb16"
    end
  end

  def install
    bin.install "danmu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/danmu --version")
  end
end
