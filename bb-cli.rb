class BbCli < Formula
  desc "Command-line tool for interacting with Bitbucket repositories"
  homepage "https://github.com/TheChessDev/bb-cli"
  url "https://github.com/TheChessDev/bb-cli/archive/v0.3.1.tar.gz"
  sha256 "4844819b335cb4110db67ac9fb8c4b6809dfd293875149ab1c5da8a4f633de77"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match "bb version", shell_output("#{bin}/bb version")
  end
end
