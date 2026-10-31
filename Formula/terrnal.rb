class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.5.0"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.5.0-darwin-arm64.gz"
    sha256 "93e31df7bb1f5058e890c2e250481f253ee47eb44bd00425e0c6a21c87cfb669"
    def install
      bin.install "terrnal-0.5.0-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.5.0-darwin-x64.gz"
    sha256 "c0edf49c0787b673a0441f82f337ee79e80984e231814284bd4f7062e03c7624"
    def install
      bin.install "terrnal-0.5.0-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
