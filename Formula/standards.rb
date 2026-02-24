class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.02.24"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.24/standards-2026.02.24-macos-arm64.tar.gz"
      sha256 "36c0fae69b2046e5f7650ab901d8be280e32687650b9cff5c102e484e3ff1f4e"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.24/standards-2026.02.24-macos-x86_64.tar.gz"
      sha256 "00a82f3bec56494bf64a59d383c58addccdd437d4e0e3cd4ddae95d036e9f104"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
