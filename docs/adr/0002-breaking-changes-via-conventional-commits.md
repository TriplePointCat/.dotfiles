# Breaking changes tracked via Conventional Commits + cocogitto

## Status

accepted

## Context

Per ADR-0001, downstream forks merge from `main` and need to know when an
upstream change requires manual action on their side. We want this without
release branches or version tags, and with discipline that survives a
single maintainer working across many devices over years.

## Decision

- Adopt **Conventional Commits** for all commits on this repo. Breaking changes
  are marked with `!` and/or a `BREAKING CHANGE:` footer that states what
  changed and the migration step a downstream fork must take.
- Use **cocogitto (`cog`)** as the single tool for both jobs: `cog check`
  enforces the format, `cog changelog` renders `CHANGELOG.md` (grouped by type,
  prominent breaking section, anchored to SHAs/dates).
- Enforce the format with a **self-installing `commit-msg` hook**: a
  `git-hooks.nix` hook in a new `devShells.default`, auto-installed when direnv
  evaluates the committed `.envrc` (`use flake`) on `cd` into the repo. One
  `direnv allow` per clone; no other per-device setup.

## Consequences

- `CHANGELOG.md` is **upstream-generated and downstream-read-only**. Forks must
  never regenerate it (doing so would conflict on every merge). cocogitto owns
  the whole file and regenerates it over full history (no anchor tag, per
  ADR-0001); a few pre-adoption `refactor:` commits leak in harmlessly.
- The convention, devShell, and hook config are committed, so downstream forks
  inherit Conventional-Commit enforcement on their own commits by default. They
  may remove `.envrc` if unwanted.
- Adds a dev-tooling input and a devShell to the flake. This lands only in the
  dev-shell closure, never in the NixOS system build.

## Considered alternatives

- **Minimal "breaking-only" footer convention**: rejected in favor of full
  Conventional Commits for a richer changelog.
- **git-cliff + commitlint**: rejected — two tools, and commitlint pulls in
  Node; cocogitto does both jobs as one Rust binary.
- **Trust / no enforcement**: rejected — slips are silent and miscategorize the
  changelog.
