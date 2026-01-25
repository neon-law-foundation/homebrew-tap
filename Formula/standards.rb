class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/SagebrushStandards"
  version "26.01.25"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v26.01.25/standards-26.01.25-macos-arm64.tar.gz"
      sha256 "961fdd0acab69538187326dfceb760f91be3286e903a7cf5cf4d152c779ebf94"
    end
    on_intel do
      url "https://github.com/neon-law-foundation/SagebrushStandards/releases/download/v26.01.25/standards-26.01.25-macos-x86_64.tar.gz"
      sha256 "163a286697c0d9ccb7144c5007eea7c993ebeda15e41d63e9023a326278828c4"
    end
  end

  def install
    bin.install "standards"
  end

  test do
    assert_match "standards", shell_output("#{bin}/standards --version")
  end
end
