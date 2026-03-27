class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.5/clust-aarch64-apple-darwin.tar.gz"
      sha256 "91da2787bcc971d4e6602a5ac9651bfda2ad32b217fe40c56bc7deeb8cc0c697"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.5/clust-x86_64-apple-darwin.tar.gz"
      sha256 "73a5e25bfde624c3862bd13af9bb92c4e9a0adec772352529275ca2d00c8110f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.5/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8264fe3f23213e114dc4b395667c94044bfaa816f0458f88bc4f3a70115eb39"
    end
  end

  def install
    bin.install "clust"
    bin.install "clust-pool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clust --version")
  end
end
