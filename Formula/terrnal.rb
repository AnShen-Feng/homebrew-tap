class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.4.1"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.4.1-darwin-arm64.gz"
    sha256 "0256f3da498ede67a495066bae79291fcd9ea2016a63f754062b6a2dbc2a00bc"
    def install
      bin.install "terrnal-0.4.1-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.4.1-darwin-x64.gz"
    sha256 "5555d584c208af591d2e0d55a468ce9fac529aabfd8fa8ee7b0ce030ab389077"
    def install
      bin.install "terrnal-0.4.1-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
