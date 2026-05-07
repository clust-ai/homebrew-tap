class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.24/clust-aarch64-apple-darwin.tar.gz"
      sha256 "052400e1e9c1df3ddd1c8849045b647d1573a9b17eaa531d79029318a7bb8a48"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.24/clust-x86_64-apple-darwin.tar.gz"
      sha256 "3232dc6c82b6c63ba147c97f84ff096c03ce52865e123133233228a34cf1b5c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.24/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "188cd19d3dc976ea515c14ef0d660cccbd1fa9bb0cfca8a68b7cac474e9206de"
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
