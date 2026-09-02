class Opencodex < Formula
  desc "GroepOnline OpenCodex — universal provider proxy for Codex and Claude Code"
  homepage "https://github.com/GroepOnline/opencodex"
  url "https://registry.npmjs.org/@groeponline/opencodex/-/opencodex-1.3.0.tgz"
  sha256 "5e0672033ef6a0c3c284ea6eb864e827d7534f2c44f7093b40e1eebfa8a27a61"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.1", shell_output("#{bin}/ocx --version")
  end
end
