class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.02.27"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.27/standards-2026.02.27-macos-arm64.tar.gz"
      sha256 "0b94b7d99783840f097a3be2eb0b576c1ed3c0936d8a292d20d8760bfe9e596a"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.27/standards-2026.02.27-macos-x86_64.tar.gz"
      sha256 "863eb90c8880be97e58b04a54b585b5e07ab4909302cf102c2b2dca4debddc2e"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
