class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.10/clust-aarch64-apple-darwin.tar.gz"
      sha256 "f3133d4c33963c32295fe0d3198f5c25858df65b1f8794b9e637816722819a40"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.10/clust-x86_64-apple-darwin.tar.gz"
      sha256 "9e393e1910a3582d7480196c69de60f218616168b6d5040304ecdc4ba18cb9a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.10/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd100330aab3778b048f64c1dcbaa38b4ee358678c5ccd934f9ca3e4b5046107"
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
