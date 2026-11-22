class WowTuxForge < Formula
  desc "Terminal UI (TUI) manager for World of Warcraft addons hosted on GitHub"
  homepage "https://github.com/PandaBytez/wow-tux-forge"
  url "https://github.com/PandaBytez/wow-tux-forge/archive/refs/tags/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "839adbea1388f937adf17d2135baf1a44b062788343a4ccb26401a5502ec7a9b"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"wow-tux-forge", :exist?
  end
end
