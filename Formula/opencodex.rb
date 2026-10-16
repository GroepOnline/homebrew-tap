class Opencodex < Formula
  desc "GroepOnline OpenCodex — universal provider proxy for Codex and Claude Code"
  homepage "https://github.com/GroepOnline/opencodex"
  url "https://registry.npmjs.org/@groeponline/opencodex/-/opencodex-1.5.8.tgz"
  sha256 "a427786b6dba0f5bf8051160243a343bb67022c35c660f9832c589140dc7b5d1"
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
