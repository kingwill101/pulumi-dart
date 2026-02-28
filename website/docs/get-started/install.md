---
sidebar_position: 2
---

# Install Pulumi Dart Tooling

Pulumi CLI must be able to discover `pulumi-language-dart` on your `PATH` when you run `pulumi preview` and `pulumi up`.

## Option A: install prebuilt binary from GitHub Releases

Use the installer script:

```bash
curl -fsSL https://raw.githubusercontent.com/pulumi/pulumi-dart/main/scripts/install-pulumi-language-dart.sh | bash
```

Pin to an explicit version:

```bash
curl -fsSL https://raw.githubusercontent.com/pulumi/pulumi-dart/main/scripts/install-pulumi-language-dart.sh | \
  bash -s -- --version v0.1.0
```

Install to a custom directory:

```bash
curl -fsSL https://raw.githubusercontent.com/pulumi/pulumi-dart/main/scripts/install-pulumi-language-dart.sh | \
  bash -s -- --install-dir "$HOME/bin"
```

By default, the script installs to `~/.local/bin`.

### Optional: install via Dart CLI wrapper

If you already added the `pulumi` Dart package globally, you can invoke the installer through:

```bash
dart pub global activate pulumi
pulumi-dart install-language-host
```

With explicit version:

```bash
pulumi-dart install-language-host --version v0.1.0
```

## Option B: build from source

```bash
git clone https://github.com/pulumi/pulumi-dart.git
cd pulumi-dart/pulumi-language-dart
go build -o pulumi-language-dart .
install -m 0755 pulumi-language-dart "$HOME/.local/bin/pulumi-language-dart"
```

## Verify installation

```bash
which pulumi-language-dart
pulumi-language-dart -help
```

## Verify Pulumi sees the expected binary

During preview/up, Pulumi prints a warning line indicating which path is used:

```text
warning: using pulumi-language-dart from $PATH at /your/path/pulumi-language-dart
```

If this path is not what you expect, fix `PATH` ordering.

## Windows notes

- Install path can be any directory on `%PATH%`
- If you install manually, ensure the binary is named `pulumi-language-dart.exe`
- Restart terminal after updating environment variables

## Next steps

- [Create your first project](./create-project.md)

## Related links

- [Language host release strategy](../reference/language-host-releases.md)
- [Troubleshooting](./troubleshooting.md)
