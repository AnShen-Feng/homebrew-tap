class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.7.0"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.7.0-darwin-arm64.gz"
    sha256 "32a16c7f58ac91b9cb2a435ebb4e235714c7326c93b32ac424bf61f49efe028e"
    def install
      bin.install "terrnal-0.7.0-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.7.0-darwin-x64.gz"
    sha256 "c5672608050afda8bcbc6f7fe3b60d483d3256463e9f095dc37c7b669c89e3ab"
    def install
      bin.install "terrnal-0.7.0-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
