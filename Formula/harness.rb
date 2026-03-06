class Harness < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/Harness"
  version "2026.03.06"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.06/harness-2026.03.06-macos-arm64.tar.gz"
      sha256 "e98e14555d0b81efe287d3a3540ea34730cf078bc240c63f11adda8b3689696b"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.06/harness-2026.03.06-macos-x86_64.tar.gz"
      sha256 "8f71cf2dfc87e353d348a5caf197a90f32a6957438b976c2487ae5954cfb63d4"
    end
  end

  def install
    bin.install "harness"
  end

  test do
    assert_match "harness", shell_output("#{bin}/harness --version")
  end
end
