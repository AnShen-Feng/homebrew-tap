class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.7.1"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.7.1-darwin-arm64.gz"
    sha256 "c8094f60db54c997a0cab0235877b30975fc147035e0d72b30ee9d2fce6aa38d"
    def install
      bin.install "terrnal-0.7.1-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.7.1-darwin-x64.gz"
    sha256 "b26abe12b5eb80804e8d0734afff25158c896728c7ba3c140e608ec10512ca80"
    def install
      bin.install "terrnal-0.7.1-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
