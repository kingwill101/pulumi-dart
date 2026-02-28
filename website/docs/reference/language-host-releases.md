---
sidebar_position: 2
---

# Language Host Releases and Installation Strategy

This page describes how `pulumi-language-dart` should be released and consumed.

## Goals

- End users should not need Go to get started
- Releases should provide deterministic, versioned binaries
- Installer should be scriptable for CI and onboarding

## Artifact strategy

Publish GitHub Releases in `pulumi/pulumi-dart` with semver tags:

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

Default install path is `~/.local/bin`.

## Suggested release automation

1. Build matrix for Linux/macOS/Windows and amd64/arm64
2. Package binaries with stable asset naming
3. Generate and upload checksums
4. Publish release notes
5. Smoke-test installer script against new release

## Verification checklist for maintainers

- `pulumi-language-dart -help` works from installed artifact
- `pulumi preview` resolves intended binary path
- installer works on clean shell profile
- docs reference latest stable tag examples

## CLI installer roadmap

A future `pulumi-dart` CLI command such as `pulumi-dart install-language-host` can wrap the shell script flow for a better DX.

## Next steps

- [Install Pulumi Dart tooling](../get-started/install.md)
- [Community support and contribution](./community-support.md)

## Related links

- [GitHub Releases](https://github.com/pulumi/pulumi-dart/releases)
- [Dependency registry](../providers/dependency-registry.md)
