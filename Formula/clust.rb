class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.19/clust-aarch64-apple-darwin.tar.gz"
      sha256 "3754b52b5dfd5baeea429b81a5746751885d72abe03a0fddb40bb087864990e4"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.19/clust-x86_64-apple-darwin.tar.gz"
      sha256 "05bb28f69e0a772315726103050f81e21d1afda369aa093fb80918179f4550b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.19/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f13a3a9c5b5d071e55beab9ad26611b95bd48ec304cd7e87a4c0fef5837e67a"
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
