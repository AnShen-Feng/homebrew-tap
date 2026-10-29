class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.2.1"

  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-darwin-arm64.gz"
    sha256 "AD9E43562783ED39PLACEHOLDER"
    def install
      bin.install "terrnal-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-darwin-x64.gz"
    sha256 "1C2167F428A83EAPLACEHOLDER"
    def install
      bin.install "terrnal-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
