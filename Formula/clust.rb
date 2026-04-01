class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.9/clust-aarch64-apple-darwin.tar.gz"
      sha256 "49d705a8c65e3ed694901b6957f9f2e418a09cb5e599b5ea49c87153196b25e6"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.9/clust-x86_64-apple-darwin.tar.gz"
      sha256 "a3e0a26b72b34a3d16a52b52f78f3783f42fd60c815c3e5fb5b4ea058c14649f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.9/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68f5cda4a95f736ae86daf0c783690a60f30e0d399adb2db0d86bfb3f3bfe034"
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
