class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.12/clust-aarch64-apple-darwin.tar.gz"
      sha256 "c686a85ada947432b1dc86446f8d952f0473e9d994b7f23d180c4add92d22c5b"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.12/clust-x86_64-apple-darwin.tar.gz"
      sha256 "dd0bb4b30936c4fd5d1e7ecc07add9318a2280fdd65172b46793d70ee95c41d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.12/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6072e51775ee5ccd2058b38c8e7f2cfff6ab1dc08a822bb20cdd04486c1f9c52"
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
