class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.03.02"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.03.02/standards-2026.03.02-macos-arm64.tar.gz"
      sha256 "579b77b68099e8c83933cb45beb2dde2a960ec08240216ec10237b459c3a3e1e"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.03.02/standards-2026.03.02-macos-x86_64.tar.gz"
      sha256 "9104bf8c37e22dda08f96f40169b902662145a1185b08ca06473175e5743de73"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
