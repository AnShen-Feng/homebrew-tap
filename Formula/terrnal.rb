class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.3.3"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.3.3-darwin-arm64.gz"
    sha256 "dfd84b84de365f9f2dffae688af4764988bdb16beede7fe37264848b02d5788d"
    def install
      bin.install "terrnal-0.3.3-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.3.3-darwin-x64.gz"
    sha256 "6e2c32c2cd30827ccbd9c1aaebd3f1c9b9ab90d1f732b2ea7d97a1db1b044c5c"
    def install
      bin.install "terrnal-0.3.3-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
