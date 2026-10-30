class Terrnal < Formula
  desc "Terminal IM client for Terrnal"
  homepage "https://github.com/AnShen-Feng/Terrnal-Frontend"
  version "0.3.0"

  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.anshen.online/terrnal-darwin-arm64.gz"
    sha256 "b591bbcb3e2aac4f1e86f350afbf2ae3532e0254cd365335d6c8673309fc892b"
    def install
      bin.install "terrnal-darwin-arm64" => "terrnal"
    end
  else
    url "https://dl.anshen.online/terrnal-darwin-x64.gz"
    sha256 "af4dedbbf94eededcf26926e0baee3d28bc66aa90b2fe5afabb448295f212f62"
    def install
      bin.install "terrnal-darwin-x64" => "terrnal"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terrnal --version")
  end
end
