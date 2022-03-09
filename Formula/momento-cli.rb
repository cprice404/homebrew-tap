class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.10.0/archive-0.10.0.tar.gz"
  sha256 "f19076ab793c1e3b70fbb92c3c46fffa895da15d044889797aeb037618ab1b54"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.10.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "53a150cc94d10061d39447c08a0a7f92aaf90c7954a964ef199cc25331aac958"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1ed87b36b48f0c61d0cafdb18350a6effdfc8ea92beefc10192477253124ce3e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
