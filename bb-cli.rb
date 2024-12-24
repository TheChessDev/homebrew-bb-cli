class BbCli < Formula
  desc "Command-line tool for interacting with Bitbucket repositories"
  homepage "https://github.com/TheChessDev/bb-cli"
  url "https://github.com/TheChessDev/bb-cli/archive/v0.1.0.tar.gz"
  sha256 "4b6cb97460f32a92d1aa96f2d909836a34ff1a23e545f9f83b6bc5d4770c06e8"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match "bb version", shell_output("#{bin}/bb version")
  end
end
