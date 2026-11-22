class WowTuxForge < Formula
  desc "Terminal UI (TUI) manager for World of Warcraft addons hosted on GitHub"
  homepage "https://github.com/PandaBytez/wow-tux-forge"
  url "https://github.com/PandaBytez/wow-tux-forge/archive/refs/tags/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "9523ef5828c8e85c19572c4cea40e35886e36b5a9b8cc5d59edfddb88bde662f"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"wow-tux-forge", :exist?
  end
end
