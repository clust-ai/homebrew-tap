class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.4/clust-aarch64-apple-darwin.tar.gz"
      sha256 "ef010dc1b06032d2e06824cd92041f4b5bf820642738a7faf5a1c86232446f56"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.4/clust-x86_64-apple-darwin.tar.gz"
      sha256 "6a3c245f3cb08e525929c79b3d61f581c5b67b711d1b3285c0b0980934423ddf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.4/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7dde4822ffbea98cd60120edf6741221ae16b72c13208184ca55d4d10bc38751"
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
