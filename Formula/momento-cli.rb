class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.22.10/archive-0.22.10.tar.gz"
  sha256 "db075a7bd236f766fb27afa29c72c234cc16c5e7010845c552b7b30bbb7dd210"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.22.6"
    sha256 cellar: :any_skip_relocation, monterey:     "92961061715d838cbce22e4ed6e12bbe2827128ee218094e5c3e2d76c8328163"
    sha256                               x86_64_linux: "e241352118a36c499816d9757bad2f4d0ffcae88cf3368e2544e327ed509d2a4"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
