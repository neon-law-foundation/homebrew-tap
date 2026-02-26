class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.02.26"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.26/standards-2026.02.26-macos-arm64.tar.gz"
      sha256 "0c68048935741c9c2fbd1fe540c97b6464b8030dcba5e28ffc062c49c599d413"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.26/standards-2026.02.26-macos-x86_64.tar.gz"
      sha256 "e066d79c7e7b9ba70032bccf151eec5924d2b38dbd4038e7b4aa0829a5c3e62f"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
