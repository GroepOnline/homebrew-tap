class PiAgentOrchestrator < Formula
  desc "Multi-agent orchestration for Pi — autonomous subagents, worktrees, swarms, schedules, handoffs"
  homepage "https://github.com/GroepOnline/pi-agent-orchestrator"
  url "https://registry.npmjs.org/@groeponline/pi-agent-orchestrator/-/pi-agent-orchestrator-0.18.0.tgz"
  sha256 "008db50b076912d67b9a1c3458ac77626d866f02c5626ec2ad3385faa45171b8"
  version "0.18.0"
  license "MIT"

  depends_on "node"

  # Library package (no CLI binary); installs the ESM module for Pi + tooling.
  def install
    system "npm", "install", *std_npm_args
  end

  test do
    system "node", "-e", "require('@groeponline/pi-agent-orchestrator/package.json')"
  end
end
