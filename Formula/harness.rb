class Harness < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/Harness"
  version "2026.03.04"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.04/harness-2026.03.04-macos-arm64.tar.gz"
      sha256 "ea09fa0547218c782346e5cea917b0c686a5b1f67eae947b54c2806469a990fa"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.04/harness-2026.03.04-macos-x86_64.tar.gz"
      sha256 "ca4f06f88c2bc08698d7541273d622bee9d497ca5920b89054e5332309f61593"
    end
  end

  def install
    bin.install "harness"
  end

  test do
    assert_match "harness", shell_output("#{bin}/harness --version")
  end
end
