class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.15/clust-aarch64-apple-darwin.tar.gz"
      sha256 "81fdb8e9526e21b98f75fbfd0da98e968d48c9c5038dd33f60044510668d9c45"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.15/clust-x86_64-apple-darwin.tar.gz"
      sha256 "4dd50d0f75d338a0a3a020636abb95b7be956abeea985fae33567da6196e99fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.15/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55bf3fabacfdbb2d44ab49d1586fede1d4e085b60bfba3fb634c2faf11d135a5"
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
