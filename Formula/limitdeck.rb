class Limitdeck < Formula
  desc "Privacy-safe terminal dashboard for AI subscription limits"
  homepage "https://github.com/rockythink/limitdeck"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.0/limitdeck-aarch64-apple-darwin.tar.gz"
      sha256 "d0421ecc071bcc2210c795fa8cc9edc03758a6c81ae9a2045d185fc4283000a5"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.0/limitdeck-x86_64-apple-darwin.tar.gz"
      sha256 "d069466bb5bd4920e1d9b5d856402ab0b7b2b8b575ac5778f335f8a5d2348a22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.0/limitdeck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9297703dc7e42f9697b61ccda1cacc70a37911781840f0be2cd360807fc7e14"
    else
      url "https://github.com/rockythink/limitdeck/releases/download/v0.1.0/limitdeck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3fc781cb1d6484218bf4c3c0750f43927f406fdcd1a0a2ef5d5cd99742c93da"
    end
  end

  def install
    bin.install "limitdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitdeck --version")
  end
end
