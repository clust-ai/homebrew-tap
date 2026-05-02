class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.20/clust-aarch64-apple-darwin.tar.gz"
      sha256 "82b0f2457a9a1fad1d2af059fdbef43016ecd045c31e2f1ccc0c627b5a9fef33"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.20/clust-x86_64-apple-darwin.tar.gz"
      sha256 "c5392fe5af649e0c826c3c8e7f3294d657bbe9cd279c6e04e78d2a9bde8044d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.20/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf7e0e763166c668443c14f50a16032a753d9fb98b9fe9e38ba1329b61da21c9"
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
