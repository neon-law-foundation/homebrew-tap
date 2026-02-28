class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.02.28"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.28/standards-2026.02.28-macos-arm64.tar.gz"
      sha256 "ba2aeb2971499e839ea3513144280640bd9e08f6a3473f28bf90a5d01b27f130"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.28/standards-2026.02.28-macos-x86_64.tar.gz"
      sha256 "125de62896f03f6e4285bad7cfaae230379dc14e8ddd1a821f61266d4b175406"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
