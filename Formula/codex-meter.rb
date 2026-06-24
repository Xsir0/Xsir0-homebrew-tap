class CodexMeter < Formula
  desc "View ChatGPT Codex usage from the terminal"
  homepage "https://github.com/Xsir0/codex-meter"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xsir0/codex-meter/releases/download/v0.3.1/codex-meter-v0.3.1-darwin-arm64.tar.gz"
      sha256 "be41d4c365b4aa1491846e40e8186f372fe9c978ae5ece439cb57e63428516d8"
    else
      url "https://github.com/Xsir0/codex-meter/releases/download/v0.3.1/codex-meter-v0.3.1-darwin-amd64.tar.gz"
      sha256 "21477071182c45e431ea44eed9af0c69e753c3a7d283404253dfd8b37242db04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xsir0/codex-meter/releases/download/v0.3.1/codex-meter-v0.3.1-linux-arm64.tar.gz"
      sha256 "97b01f60bacd500f8981be14eecaaa1db15933e6be7d9568c078b517008fef8b"
    else
      url "https://github.com/Xsir0/codex-meter/releases/download/v0.3.1/codex-meter-v0.3.1-linux-amd64.tar.gz"
      sha256 "6c4f82bdd73c637d90414a683ef61e3e4e7e3e7c41d77e083d9a3b9e5ccbd1fd"
    end
  end

  def install
    bin.install "codex-meter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-meter --version")
  end
end
