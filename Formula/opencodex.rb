class Opencodex < Formula
  desc "GroepOnline OpenCodex — universal provider proxy for Codex and Claude Code"
  homepage "https://github.com/GroepOnline/opencodex"
  url "https://registry.npmjs.org/@groeponline/opencodex/-/opencodex-1.3.1.tgz"
  sha256 "79d65b277d6019772fdbe0d2675bdd9e1fe0e94011485d2b6ae42eabc18d497f"
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
