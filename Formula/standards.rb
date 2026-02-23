class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "2026.02.23"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.23/standards-2026.02.23-macos-arm64.tar.gz"
      sha256 "a837e83d58b910b6df840d4df59084d0f310290af23a21a48cc087bd10a086c1"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v2026.02.23/standards-2026.02.23-macos-x86_64.tar.gz"
      sha256 "03ef0184ea7d0f4b594b033e07a546ec1e0800d9747bc876703286bda8f2e940"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
