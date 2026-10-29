class Terrnal < Formula
  desc "终端里的 IM — Terrnal 客户端"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.2.1"

  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-darwin-arm64.gz"
    sha256 "7e5c792266aeb3da2f3263ecd868bea01a9bb996e216d03482c51000ce4a8415"
    def install
      bin.install "terrnal-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-darwin-x64.gz"
    sha256 "88181e94bf858d5b7d1f01ded009ad5216e1dc6a32b2c8a2c4dbeff6e085d07d"
    def install
      bin.install "terrnal-darwin-x64" => "terrnal"
    end
  end

  def caveats
    <<~EOS
      首次使用: terrnal register 你的代号
      升级:     brew upgrade terrnal
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
