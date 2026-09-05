---
sidebar_position: 3
---

# Community Support and Contribution

Pulumi Dart is community-maintained. This page describes practical contribution paths.

## Where to contribute

- Core runtime SDK: `packages/pulumi-dart/`
- Language host and generator: `pulumi-language-dart/`
- Generated provider packages: `packages/sdks/<provider>/`
- Provider schema sources: `packages/sdks/schema_sources.json`
- Docs site: `website/`

## Common contribution types

- Generator bug fixes (naming, type mapping, docs, imports)
- Provider package generation fixes
- Dependency registry updates for missing transitive deps
- Test additions (unit/integration/golden)
- Documentation improvements and tutorials

## Submitting a provider update

Include in your PR:

1. the provider and upstream schema version
2. the `repodoc packages:update` command used
3. schema and generated package changes
4. `dart pub get`, analysis, and test results
5. smoke-test evidence for at least one resource or invoke path

## Maintaining your own registry fork

You can keep a private registry without waiting on upstream repo changes:

```bash
export PULUMI_DART_DEPENDENCY_REGISTRY=/abs/path/to/my_registry.yaml
pulumi package add ./provider.schema.json
```

Or centralize for a team via URL:

```bash
export PULUMI_DART_DEPENDENCY_REGISTRY_URL=https://internal.example.com/pulumi-dart-registry.yaml
```

## Reporting issues effectively

When opening issues, include:

- Pulumi CLI version
- Dart SDK version
- `pulumi-language-dart` version/path
- provider/schema version
- minimal repro project or schema snippet
- full error output

## Next steps

- [Generate provider SDKs](../providers/generate-provider-sdk.md)
- [Dependency registry](../providers/dependency-registry.md)

## Related links

- [Pulumi Dart repository issues](https://github.com/kingwill101/pulumi-dart/issues)
