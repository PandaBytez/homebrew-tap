class Neutron < Formula
  desc "Fast WireGuard profile manager via NetworkManager"
  homepage "https://github.com/PandaBytez/neutron"
  url "https://github.com/PandaBytez/neutron/archive/30013ab4f012299bfe9b0bffcce139412f250c6c.tar.gz"
  version "0.2.1"
  sha256 "3cfec636f4950196cc5af0c242600465b90e09608795dd0adbb4bea4d1b4d854"
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
