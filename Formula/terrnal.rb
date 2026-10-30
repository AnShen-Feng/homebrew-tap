class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.3.1"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.3.1-darwin-arm64.gz"
    sha256 "1b398de5506fe4f05c8306de1145928c66cdf4aa5d7461cac291c25631d026af"
    def install
      bin.install "terrnal-0.3.1-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.3.1-darwin-x64.gz"
    sha256 "04e58dbe6e9dc9e75fed05ad8a53679f6cb5252e65cc8088381b352fb9cd8f44"
    def install
      bin.install "terrnal-0.3.1-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
