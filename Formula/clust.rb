class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.21/clust-aarch64-apple-darwin.tar.gz"
      sha256 "f4c5a98cb8c0d8f2ff47f0b642b28d0716962b4afdd53c12d8fcab31933f6275"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.21/clust-x86_64-apple-darwin.tar.gz"
      sha256 "58a3cb41ae10610954e015c06148ae52c68dfd3892955ac69716e6f613ad5598"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.21/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "850e6d8f59aaacd75d7254e6b30e7581bd461770f3b592ea2d457623233dad06"
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
