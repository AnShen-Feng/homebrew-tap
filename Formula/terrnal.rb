class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.4.0"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.4.0-darwin-arm64.gz"
    sha256 "ad1cd5de6a4cf2a9dd07f4bc6af86349dd9da4d8e17867338db0604607f7971b"
    def install
      bin.install "terrnal-0.4.0-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.4.0-darwin-x64.gz"
    sha256 "58d2155cddf06436d82e562d59bc19760db31f0047309089fd0f0eeaea3a8606"
    def install
      bin.install "terrnal-0.4.0-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
