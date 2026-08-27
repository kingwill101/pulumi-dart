---
sidebar_position: 2
---

# Language Host Releases and Installation Strategy

This page describes how `pulumi-language-dart` is released and consumed.

## Goals

- End users should not need Go to get started
- Releases should provide deterministic, versioned binaries
- Installer should be scriptable for CI and onboarding

## Artifact strategy

GitHub Releases are published from `kingwill101/pulumi-dart` with semver tags:

- tag format: `vX.Y.Z`
- assets:
  - `pulumi-language-dart-vX.Y.Z-linux-amd64.tar.gz`
  - `pulumi-language-dart-vX.Y.Z-linux-arm64.tar.gz`
  - `pulumi-language-dart-vX.Y.Z-darwin-amd64.tar.gz`
  - `pulumi-language-dart-vX.Y.Z-darwin-arm64.tar.gz`
  - `pulumi-language-dart-vX.Y.Z-windows-amd64.zip`
  - `pulumi-language-dart-vX.Y.Z-windows-arm64.zip`
- checksums file:
  - `pulumi-language-dart-vX.Y.Z-checksums.txt`

## Installer script contract

Current installer script:

- `scripts/install-pulumi-language-dart.sh`

Supported options:

- `--version <tag>`
- `--install-dir <dir>`
- `--repo <owner/repo>`
- `--ref <tag-or-branch>` when using the `pulumi-dart` helper CLI

Default install path is `~/.local/bin`.

The published `pulumi` package includes a helper that wraps the same installer:

```bash
dart pub global activate pulumi
pulumi-dart install-language-host
pulumi-dart install-language-host --version v3.1.1
```

The helper CLI currently supports Linux and macOS. Windows users install the
`.zip` release asset manually and place `pulumi-language-dart.exe` on `%PATH%`.

## Release automation

The release workflow performs these steps after tests pass:

1. Build Linux, macOS, and Windows archives for amd64 and arm64.
2. Package binaries with stable asset names.
3. Generate and upload checksums.
4. Publish the GitHub Release and its assets.

## Current GitHub workflows in this repo

- CI: `.github/workflows/dart-ci.yml`
  - tests `pulumi-language-dart` and `pulumi-dart`
  - runs integration test shards
  - installs Pulumi CLI in CI jobs
  - validates protobuf generation (`make generate`) with `protoc` + `protoc_plugin`
  - ensures Pulumi submodule checkout is initialized for proto/integration workflows
- Binary release: `.github/workflows/dart-release-language-host.yml`
  - push tag `vX.Y.Z` to publish assets
  - `workflow_dispatch` supports snapshot builds and manual tagged releases
- Drift monitor: `.github/workflows/dart-schema-drift.yml`
  - checks schema/version drift per provider package

## Verification checklist for maintainers

- `pulumi-language-dart -help` works from installed artifact
- `pulumi preview` resolves intended binary path
- installer works on clean shell profile
- docs reference latest stable tag examples

Run a complete build without publishing from any trusted branch:

```bash
gh workflow run dart-release-language-host.yml \
  --ref <branch> \
  -f mode=snapshot
```

To publish, create and push an annotated `vX.Y.Z` language-host tag. The tag
must exist before using manual release mode because the workflow checks out the
requested release tag:

```bash
git tag -a vX.Y.Z -m 'pulumi-language-dart vX.Y.Z'
git push origin vX.Y.Z
```

The tag push publishes automatically. If that run needs to be started manually
after the tag exists, dispatch release mode from a trusted branch:

```bash
gh workflow run dart-release-language-host.yml \
  --ref <trusted-branch> \
  -f mode=release \
  -f release_tag=vX.Y.Z
```

## Next steps

- [Install Pulumi Dart tooling](../get-started/install.md)
- [Community support and contribution](./community-support.md)

## Related links

- [GitHub Releases](https://github.com/kingwill101/pulumi-dart/releases)
- [Dependency registry](../providers/dependency-registry.md)
