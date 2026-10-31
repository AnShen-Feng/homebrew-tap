class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.6.2"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.6.2-darwin-arm64.gz"
    sha256 "b91461cdf0a9ff704be3489d6294b2cf516556b1614a209a5f192c8d1e9688b0"
    def install
      bin.install "terrnal-0.6.2-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.6.2-darwin-x64.gz"
    sha256 "5b506459c8591163a12db0411331cd85d826e1fa6bb6364efb331592eacbe7cd"
    def install
      bin.install "terrnal-0.6.2-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
