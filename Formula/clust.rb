class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.17/clust-aarch64-apple-darwin.tar.gz"
      sha256 "da68140f65fb3767c704d95b60658f92e71f4974188abf489560e324277fe58a"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.17/clust-x86_64-apple-darwin.tar.gz"
      sha256 "4992d47903fe7bbb34b6a81355796621d4cdc696722cf12f239c17ec2c92c467"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.17/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93731302697a95a43cc3ed19c8f6a45d016af8830dc21169aea7c3decadc4d7b"
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
