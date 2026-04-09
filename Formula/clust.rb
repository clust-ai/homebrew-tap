class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.16/clust-aarch64-apple-darwin.tar.gz"
      sha256 "bd113e3309ab0f41ca2fcee7ccb80b6d222acd56b295a96570475f8f8876a484"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.16/clust-x86_64-apple-darwin.tar.gz"
      sha256 "36a10dc433b75f6b6990c827b9860137446b7ea76a33e287a3ba163fff057323"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.16/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afa9f2e77da8d6621855669b89af01e5a3f3ca8014bc263f388efb9fe79f6683"
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
