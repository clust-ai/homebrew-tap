class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.7/clust-aarch64-apple-darwin.tar.gz"
      sha256 "952616260a991c0feffa2e4afda31fa03fd9d1277f8c9a00c0dd7ade9b9e4bac"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.7/clust-x86_64-apple-darwin.tar.gz"
      sha256 "4bbbf2a6e0650c7455a73b6e4e02bd022e4192007f271bb38e712262850aa8f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.7/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aae6c6c6c7afaffa67ef9e222cb007d33cf41f98b3da5dbaba84a867a3a2e010"
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
