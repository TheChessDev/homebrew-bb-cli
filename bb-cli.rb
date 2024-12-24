class BbCli < Formula
  desc "Command-line tool for interacting with Bitbucket repositories"
  homepage "https://github.com/TheChessDev/bb-cli"
  url "https://github.com/TheChessDev/bb-cli/archive/v0.3.2.tar.gz"
  sha256 "240c3864294ac611be2174bf4347e878b7a70b88fd0127560a26cd5a993dbd6b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match "bb version", shell_output("#{bin}/bb version")
  end
end
