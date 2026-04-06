class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.14/clust-aarch64-apple-darwin.tar.gz"
      sha256 "7b3f6b766e3f1539f632030ff20f0b13914b2d1b86f8367b1b21edb9126ec296"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.14/clust-x86_64-apple-darwin.tar.gz"
      sha256 "6459c3097e5d1299af9164900807fa90bf576a693056042463003c486d9790c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.14/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0cd6eb6d5ebc9d5cf4753a38f4d7e80104d94e41f2d77fd821e9dd3021dd5342"
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
