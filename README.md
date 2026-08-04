# GroepOnline Homebrew Tap

Private tap for GroepOnline product releases.

```bash
brew tap GroepOnline/homebrew-tap
brew install GroepOnline/homebrew-tap/opencodex
brew install GroepOnline/homebrew-tap/pi-agent-orchestrator
brew install GroepOnline/homebrew-tap/groeponline-herdr
```

Formulas are updated by release workflows:
- `opencodex`: `GroepOnline/opencodex` `release.yml` (npm tarball; requires `HOMEBREW_TAP_TOKEN`)
- `groeponline-herdr`: `GroepOnline/herdr` `publish-distribution.yml` (requires `HOMEBREW_TAP_DEPLOY_KEY`)
- `pi-agent-orchestrator`: `GroepOnline/pi-agent-orchestrator` is npm-only (no tap-push workflow); formula is seeded manually — update `sha256` after the first publish of `@groeponline/pi-agent-orchestrator@0.18.0`

Initial placeholder checksums are replaced on first successful publish.
