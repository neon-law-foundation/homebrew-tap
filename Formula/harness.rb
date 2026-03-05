class Harness < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/Harness"
  version "2026.03.05"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.05/harness-2026.03.05-macos-arm64.tar.gz"
      sha256 "57f251d8689cc50e252f80547aa3a9dc801f19747e050ef02d8fce4729e8eac5"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.05/harness-2026.03.05-macos-x86_64.tar.gz"
      sha256 "8253dadb432b94286f9e09559bf891d25d2ed2c25d2f0a2a85c8741deb162369"
    end
  end

  def install
    bin.install "harness"
  end

  test do
    assert_match "harness", shell_output("#{bin}/harness --version")
  end
end
