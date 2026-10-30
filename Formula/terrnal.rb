class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.3.2"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.3.2-darwin-arm64.gz"
    sha256 "dfb924bb976b46de3c16cd6048fd8f59356020b2f24d68e0b84828054be2cdd5"
    def install
      bin.install "terrnal-0.3.2-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.3.2-darwin-x64.gz"
    sha256 "bd5a8bfe4db66286afe47000b6d77b66a4038b75bd811a9866dea15ac20303d2"
    def install
      bin.install "terrnal-0.3.2-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
