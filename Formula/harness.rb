class Harness < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/Harness"
  version "2026.03.07"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.07/harness-2026.03.07-macos-arm64.tar.gz"
      sha256 "60fbe1f081d1d7a3a441171321d458fe4053d4cde4ad877b0dfbeb69b491915b"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/Harness/releases/download/v2026.03.07/harness-2026.03.07-macos-x86_64.tar.gz"
      sha256 "6650b61be3cea7ed448c6be67106770e556ef459c053c3de37fbfce3e0fe9f3d"
    end
  end

  def install
    bin.install "harness"
  end

  test do
    assert_match "harness", shell_output("#{bin}/harness --version")
  end
end
