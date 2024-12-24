class BbCli < Formula
  desc "Command-line tool for interacting with Bitbucket repositories"
  homepage "https://github.com/TheChessDev/bb-cli"
  url "https://github.com/TheChessDev/bb-cli/archive/v0.4.1.tar.gz"
  sha256 "8ad60d011370e54589cb828ef6d3c3f1a871e2691ef467875bc5643cc74b831d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match "bb version", shell_output("#{bin}/bb version")
  end
end
