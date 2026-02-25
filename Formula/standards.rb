class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.02.25"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.25/standards-2026.02.25-macos-arm64.tar.gz"
      sha256 "a2d1b5575cb8bcf0119a7e854b577160f844603f13ff3fb4122f2947aaa3872d"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.25/standards-2026.02.25-macos-x86_64.tar.gz"
      sha256 "143cb84e59853761008638c05253baa208836c4123de886129d7513e5aac7eb8"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
