class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.5.1"

  # 分发文件名带版本号（防 CDN 边缘缓存旧版），升级版本时同步改 url + sha256
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-0.5.1-darwin-arm64.gz"
    sha256 "57cdfc8a75183488d42062e6afa11b236e5b21c133f787dbd8084b53272ef51b"
    def install
      bin.install "terrnal-0.5.1-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-0.5.1-darwin-x64.gz"
    sha256 "3745a3adb52dcc2bf8fc5ba4fc961deb6bc654f8d31717c856eccbaf0047b09f"
    def install
      bin.install "terrnal-0.5.1-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
