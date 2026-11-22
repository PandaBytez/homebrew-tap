class WowTuxForge < Formula
  desc "Terminal UI (TUI) manager for World of Warcraft addons hosted on GitHub"
  homepage "https://github.com/PandaBytez/wow-tux-forge"
  url "https://github.com/PandaBytez/wow-tux-forge/archive/a8cae75d3a38fbd550b9316480930a8db9354629.tar.gz"
  version "0.1.0"
  sha256 "2312025ec0964b895c261dfacbbd5d4b234532f6cc5279ab1fa48ed169c4754b"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"wow-tux-forge", :exist?
  end
end
