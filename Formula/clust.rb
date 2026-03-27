class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.6/clust-aarch64-apple-darwin.tar.gz"
      sha256 "bb44bc92a1012f790f483e720b9d7835d40b99b9d36281243bbb80f3c3846a25"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.6/clust-x86_64-apple-darwin.tar.gz"
      sha256 "6222e7d72ab625af2f67573efa46bb2b22b29fdd5af8b122c93e45e245cf0279"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.6/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d32187fe4030d31e28426b3ac1e33b46c1ccacd6c6a0531ed36ae9d9bd50742f"
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
