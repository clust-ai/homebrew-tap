class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.26/clust-aarch64-apple-darwin.tar.gz"
      sha256 "ceba64906adc2e1e8989f5809e20669d81d6025c9fc7fb0ab2c973865fd7be09"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.26/clust-x86_64-apple-darwin.tar.gz"
      sha256 "7b972a18838079eac1c8cddaa56bfa9c0cc1f4540279f564ba8a3c58d7c4d6bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.26/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "759dd8d6f601062daba547e2a5246ed8dad8fb9a9b9b3ce57ff856d26451e899"
    end
  end

  def install
    bin.install "clust"
    bin.install "clust-hub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clust --version")
  end
end
