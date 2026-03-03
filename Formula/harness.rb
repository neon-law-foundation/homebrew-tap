class Harness < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/Harness"
  version "2026.03.03"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.03/harness-2026.03.03-macos-arm64.tar.gz"
      sha256 "d1260520efff07b2c55f089ea701a1d0d893bd522aa2d477da8910434ca665a8"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.03/harness-2026.03.03-macos-x86_64.tar.gz"
      sha256 "9494b1ee1e67679e2ea4f74b49ab10e99acabcb4033e6cea08dc5a989b53e55b"
    end
  end

  def install
    bin.install "harness"
  end

  test do
    assert_match "harness", shell_output("#{bin}/harness --version")
  end
end
