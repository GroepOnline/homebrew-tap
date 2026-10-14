class Opencodex < Formula
  desc "GroepOnline OpenCodex — universal provider proxy for Codex and Claude Code"
  homepage "https://github.com/GroepOnline/opencodex"
  url "https://registry.npmjs.org/@groeponline/opencodex/-/opencodex-1.5.6.tgz"
  sha256 "5b743e008769ec3fea159895da84b3a57ff56c12dab5fa5e10afab0a4b29d608"
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
