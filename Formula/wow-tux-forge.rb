class WowTuxForge < Formula
  desc "Terminal UI (TUI) manager for World of Warcraft addons hosted on GitHub"
  homepage "https://github.com/PandaBytez/wow-tux-forge"
  url "https://github.com/PandaBytez/wow-tux-forge/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "8e4c168a2cfe7da5912826d6e37e70dfbbb76e921695b20f2d7d5653cabb9f8b"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"wow-tux-forge", :exist?
  end
end
