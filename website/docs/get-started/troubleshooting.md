---
sidebar_position: 6
---

# Troubleshooting

## `no language plugin 'pulumi-language-dart' found`

Pulumi cannot discover the Dart language host plugin.

Fix:

1. Install `pulumi-language-dart`
2. Ensure install location is on `PATH`
3. Re-run `which pulumi-language-dart`
4. Re-run `pulumi preview`

## Wrong language host binary selected from `PATH`

If you have multiple copies, Pulumi may pick an unexpected one.

Detect:

- Run `pulumi preview`
- Check warning line for selected binary path

Fix by placing the desired install directory earlier in `PATH`.

## `dart pub get` conflict between hosted and local `pulumi`

This appears when generated provider packages depend on hosted `pulumi`, but your project is pinned to a local path build.

Use `dependency_overrides`:

```yaml
dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/pulumi-dart
```

## Generation warnings about provider `__self__` references

Warnings such as below are emitted by upstream package/schema processing and are currently non-blocking:

```text
reference to provider resource '/resources/pulumi:providers:<provider>' is deprecated, use '#/provider' instead;
```

## Preview shows output value as `[unknown]`

This is expected for computed values before apply. Run `pulumi up` to materialize actual values.

## Repeated passphrase prompts

For local backend workflows, set:

```bash
export PULUMI_CONFIG_PASSPHRASE='choose-a-strong-passphrase'
```

Keep this consistent for a given stack to avoid decrypt/encrypt mismatch errors.

## Generated package missing a transitive dependency

Use a registry entry:

1. Add dependency mapping to `sdk_dependency_registry.yaml`
2. Regenerate package
3. Re-run `dart pub get`

Or point to your own registry with `PULUMI_DART_DEPENDENCY_REGISTRY`.

## Next steps

- [Generate provider SDKs](../providers/generate-provider-sdk.md)
- [Dependency registry](../providers/dependency-registry.md)

## Related links

- [Pulumi troubleshooting](https://www.pulumi.com/docs/support/troubleshooting/)
- [Language host releases](../reference/language-host-releases.md)
