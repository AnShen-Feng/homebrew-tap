class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.6.0"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.6.0-darwin-arm64.gz"
    sha256 "0aaa5dd2209cd79a4b2a45c22cebc62c18ee81d7a5a608b9ed89864a95547eeb"
    def install
      bin.install "terrnal-0.6.0-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.6.0-darwin-x64.gz"
    sha256 "b961fd20cfd71bcb9978e92d43ea34051bbe15b7c94284fe52104c0fbd41b34d"
    def install
      bin.install "terrnal-0.6.0-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
