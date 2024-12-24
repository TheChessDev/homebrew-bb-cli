class BbCli < Formula
  desc "Command-line tool for interacting with Bitbucket repositories"
  homepage "https://github.com/TheChessDev/bb-cli"
  url "https://github.com/TheChessDev/bb-cli/archive/v0.4.0.tar.gz"
  sha256 "0ea005bea9e06222ba91dc0d78a2d3a65069a1df47da7ce06a7262fc8fbc53b3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match "bb version", shell_output("#{bin}/bb version")
  end
end
