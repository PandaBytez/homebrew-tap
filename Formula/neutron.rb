class Neutron < Formula
  desc "Fast WireGuard profile manager via NetworkManager"
  homepage "https://github.com/PandaBytez/neutron"
  url "https://github.com/PandaBytez/neutron/archive/b2be705de700798630f3cc258fdd1f4ea5a5462d.tar.gz"
  version "0.2.2"
  sha256 "a353cd350b00c197410fe65e8a848ebdbe4187f8fe0477a3a4f7fa9fc8e1f3ef"
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
