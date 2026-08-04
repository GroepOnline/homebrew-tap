# GroepOnline Homebrew Tap

Private tap for GroepOnline product releases.

```bash
brew tap GroepOnline/homebrew-tap
brew install GroepOnline/homebrew-tap/opencodex
brew install GroepOnline/homebrew-tap/groeponline-herdr
```

Formulas are updated by release workflows:
- `opencodex`: `GroepOnline/opencodex` `release.yml` (npm tarball; requires `HOMEBREW_TAP_TOKEN`)
- `groeponline-herdr`: `GroepOnline/herdr` `publish-distribution.yml` (requires `HOMEBREW_TAP_DEPLOY_KEY`)

Initial placeholder checksums are replaced on first successful publish.
