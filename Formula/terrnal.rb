class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.6.1"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.6.1-darwin-arm64.gz"
    sha256 "49c2ce70a57b65067f235419f8e98bb91d666c3bc9814871de6f565e368f04b9"
    def install
      bin.install "terrnal-0.6.1-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.6.1-darwin-x64.gz"
    sha256 "62df07e6a67a5b0a3e0c43d08fcec703e8fcae55ac17fdb5b2c008d097663106"
    def install
      bin.install "terrnal-0.6.1-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
