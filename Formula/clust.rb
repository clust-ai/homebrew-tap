class Clust < Formula
  desc "Agent manager CLI for AI coding agents"
  homepage "https://github.com/clust-ai/clust-cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.2/clust-aarch64-apple-darwin.tar.gz"
      sha256 "05958b4e5bf85697df0ce2f017faabc2cff0f6b74a3822e6dfc227d535b13709"
    end
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.2/clust-x86_64-apple-darwin.tar.gz"
      sha256 "ca01ed1720a404f60ad01d44f1d1d62a3cb22d7c3d3604bdbeb34517bf68e019"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clust-ai/clust-cli/releases/download/v0.0.2/clust-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e54dfe2817fc1c8338898febc844779447afe03a11771f2a8dd10a0d8019ea3a"
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
