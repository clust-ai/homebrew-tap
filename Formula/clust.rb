class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.1/clust-aarch64-apple-darwin.tar.gz"
      sha256 "8fe66302b29e618bd7dff3b884180b8e44b449f1725762e2491a3a6bb37e4d0b"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.1/clust-x86_64-apple-darwin.tar.gz"
      sha256 "8e425e23a62549f44c3afef9cff26c2ec1103d065625767cf5d6be2444a46c07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.1/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "225b9a9537851c44d326599598af7b51477045e5ea229e1d4339f92b211b7743"
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
