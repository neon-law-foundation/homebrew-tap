class Standards < Formula
  desc "Legal standards CLI for Markdown linting, PDF conversion, and document management"
  homepage "https://github.com/neon-law-foundation/Notations"
  version "1.0.0"
  url "https://github.com/neon-law-foundation/Notations/releases/download/v#{version}/v#{version}.tar.gz"
  sha256 "PLACEHOLDER_SHA256_WILL_BE_AUTO_UPDATED_BY_WORKFLOW"

  def install
    bin.install "StandardsCLI" => "standards"
  end

  test do
    system "#{bin}/standards", "--help"
  end
end
