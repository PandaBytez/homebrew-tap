class Neutron < Formula
  desc "Fast WireGuard profile manager via NetworkManager"
  homepage "https://github.com/PandaBytez/neutron"
  url "https://github.com/PandaBytez/neutron/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0f6b4c5b1c57f8a9c8451bd89d3de5c28173130dcf6e791b9963925475de0811"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build
  depends_on :linux

  def install
    system "cargo", "install", *std_cargo_args
    bin.install_symlink "neutron" => "neutron-vpn"
  end

  test do
    assert_match "Neutron", shell_output("#{bin}/neutron --help")
  end
end
