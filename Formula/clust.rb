class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.23/clust-aarch64-apple-darwin.tar.gz"
      sha256 "09f22bd0bf2028f7e8bb71866b0b49054f22606e83c45ef45ce3c6df00ffd0c0"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.23/clust-x86_64-apple-darwin.tar.gz"
      sha256 "efea73fb67e7f0c667732bfabbbf34318e6337416f4c93635971faae3e5df647"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.23/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e7906e3f11bf7db86e97c4fa2d6fe632174441aebe3239656504ea4b5c12f3e"
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
