class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.11/clust-aarch64-apple-darwin.tar.gz"
      sha256 "4c759b6357b749583918855b1b6a10cc509aa3aa7a06216b63f729ac22c77454"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.11/clust-x86_64-apple-darwin.tar.gz"
      sha256 "2ce121408735e6832d8808bf664e4ec1bb8886f02c7e6a5025b7ae8c9efd0a1d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.11/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3394d77535be99feabd84aa3b7f5068e9a5f8a53d3870a7fd8d5d22b9db44aa2"
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
