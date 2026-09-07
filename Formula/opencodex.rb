class Opencodex < Formula
  desc "GroepOnline OpenCodex — universal provider proxy for Codex and Claude Code"
  homepage "https://github.com/GroepOnline/opencodex"
  url "https://registry.npmjs.org/@groeponline/opencodex/-/opencodex-1.3.2.tgz"
  sha256 "50e3d5af2ec084d830ad160cc3cdec384409823bb050316ebb447a18a56138b0"
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
