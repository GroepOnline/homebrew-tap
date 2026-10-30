class Opencodex < Formula
  desc "GroepOnline OpenCodex — universal provider proxy for Codex and Claude Code"
  homepage "https://github.com/GroepOnline/opencodex"
  url "https://registry.npmjs.org/@groeponline/opencodex/-/opencodex-1.5.13.tgz"
  sha256 "ee56c09a8db5a34fb4f4d68b7d8b08ee1d9682b843e2d05404ba17311d6d3463"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocx --version")
  end
end
