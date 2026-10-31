class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.7.0"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.7.0-darwin-arm64.gz"
    sha256 "1fe7a0169f85051b69e2950e407c8ae35290e0b739f367e1b3e109a12f9b0931"
    def install
      bin.install "terrnal-0.7.0-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.7.0-darwin-x64.gz"
    sha256 "16ed5abb89f774f3f747592e18b1508837b21cf91ebd7468c4b48bf827eda77f"
    def install
      bin.install "terrnal-0.7.0-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
