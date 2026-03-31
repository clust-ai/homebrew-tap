class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.8/clust-aarch64-apple-darwin.tar.gz"
      sha256 "c3396beb66b233874187a8b3eee6792067c61da7eb29164db8a83cfce3e96e9e"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.8/clust-x86_64-apple-darwin.tar.gz"
      sha256 "ee89dbfa61399223ee18b3f3437558df31b46fe31f88d6af6c331d78da773edb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.8/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af60524bf66ee5a7e4b714004c2c77fef9c59bf74ecbdf092dc5babab49691c3"
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
