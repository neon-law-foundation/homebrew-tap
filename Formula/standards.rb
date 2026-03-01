class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.03.01"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.03.01/standards-2026.03.01-macos-arm64.tar.gz"
      sha256 "9f38a444b198792fbf1f9b2e7981a263b1ed347545c404cdb47190657d4fa17c"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.03.01/standards-2026.03.01-macos-x86_64.tar.gz"
      sha256 "76b1acc27e7ec4b4553903e6cf2c78ae391b609d1fa84b800279131df98ce758"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
