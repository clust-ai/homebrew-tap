class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.13/clust-aarch64-apple-darwin.tar.gz"
      sha256 "e3e3db44786095331cc84ef72512dc9ab7f3953cf9eccd4457a15562b7212486"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.13/clust-x86_64-apple-darwin.tar.gz"
      sha256 "635323b9d6a7d414d149d7a98461101572029bb301dbcbd0dccdf8dcc00f30e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.13/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2101bf0389585c993e6ea459c93a824a0730886fa484a69eeef9ec130f4f503"
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
