class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.18/clust-aarch64-apple-darwin.tar.gz"
      sha256 "4f53e36d4df728c1f8547feeeb1f6221473ebefcd7fca12eb9c0c2045948744a"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.18/clust-x86_64-apple-darwin.tar.gz"
      sha256 "3fef93c9f6222b9b059aafb723027b0b83b6137732ed5d3a92911612c438ce55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.18/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "057678749df6619186babf206af3ce18ccc927693172fa512021b6201e0161b2"
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
