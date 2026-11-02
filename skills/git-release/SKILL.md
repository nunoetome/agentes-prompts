---
name: Git Release
description: Prepare release notes, version bumps, and GitHub releases
---

## Workflow

1. Read `references/release-policy.md`.
2. Summarize merged changes since the previous tag.
3. Propose the version bump before changing files.
4. Run `scripts/changelog.ts` only after the user approves the version.