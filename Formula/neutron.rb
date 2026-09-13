class Neutron < Formula
  desc "Fast WireGuard profile manager via NetworkManager"
  homepage "https://github.com/PandaBytez/neutron"
  url "https://github.com/PandaBytez/neutron/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2b506c584adb6631fe76a5ff0662aa3adb0ae6f9c1bb07106bf459c97aed98e0"
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
