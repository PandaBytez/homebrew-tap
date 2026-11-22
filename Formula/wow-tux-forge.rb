class WowTuxForge < Formula
  desc "Terminal UI (TUI) manager for World of Warcraft addons hosted on GitHub"
  homepage "https://github.com/PandaBytez/wow-tux-forge"
  url "https://github.com/PandaBytez/wow-tux-forge/archive/refs/tags/v0.1.3.tar.gz"
  version "0.1.3"
  sha256 "2889c30ee8d9ecd226597e189e44f29e59cc47dd41d9ba06269681af8e1c5c1c"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"wow-tux-forge", :exist?
  end
end
