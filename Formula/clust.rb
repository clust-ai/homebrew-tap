class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.22/clust-aarch64-apple-darwin.tar.gz"
      sha256 "5ffaba9298e4a4f4fadbb6f796e62f45ce0645c8be6588bd957dbca7ff005e76"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.22/clust-x86_64-apple-darwin.tar.gz"
      sha256 "11a8b2bd5348df76493eeecf2fef55baa5ed1c76ead86f082830b76e192c8efe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.22/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "981b5de8c7673e470a005062ae940fd7cb243208ba4bb8122892a94c7a9967b4"
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
