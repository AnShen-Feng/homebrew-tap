class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.6.2"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.6.2-darwin-arm64.gz"
    sha256 "dd39829b35bc7bcdc4e9efd29fedd3d1aa6ed0526b8c1de5171365a9f6eaecf8"
    def install
      bin.install "terrnal-0.6.2-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.6.2-darwin-x64.gz"
    sha256 "6a5bfaa66c45dd3583bbca7140db6590c187ecc2d379b6279aa1786c30a0a3be"
    def install
      bin.install "terrnal-0.6.2-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
