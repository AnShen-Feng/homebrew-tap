class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.4.2"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.4.2-darwin-arm64.gz"
    sha256 "2648fd96f8f56429da5e6c0abc67b411e54fff3407538cf006b4c88c6dcfae30"
    def install
      bin.install "terrnal-0.4.2-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.4.2-darwin-x64.gz"
    sha256 "9ed8903790ca008ffa764afa79adb59c798591d940c441b613ebb5aacbd658fb"
    def install
      bin.install "terrnal-0.4.2-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
