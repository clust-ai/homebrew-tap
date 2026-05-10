class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.25/clust-aarch64-apple-darwin.tar.gz"
      sha256 "5d6d75a393d68a4d731d55c9b151e4db5480028e39c61261d535bfcb8636c1b4"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.25/clust-x86_64-apple-darwin.tar.gz"
      sha256 "d18236fa0644acbfc05388e1cf63fce14944af744e460df0281d0e9855f8f292"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.25/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a14c49f0b46dd35d3254fbdfd5781c487790c2a766d7065e7b8d60f6e52aec8"
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
