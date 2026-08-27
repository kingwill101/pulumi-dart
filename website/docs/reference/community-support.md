---
sidebar_position: 3
---

# Community Support and Contribution

Pulumi Dart is community-maintained. This page describes practical contribution paths.

## Where to contribute

- Core runtime SDK: `pulumi-dart/`
- Language host and generator: `pulumi-language-dart/`
- Generated provider packages: `packages/<provider>/`
- Dependency registry: `packages/sdk_dependency_registry.yaml`
- Docs site: `website/`

## Common contribution types

- Generator bug fixes (naming, type mapping, docs, imports)
- Provider package generation fixes
- Dependency registry updates for missing transitive deps
- Test additions (unit/integration/golden)
- Documentation improvements and tutorials

## Submitting a provider registry entry

Include in your PR:

1. registry diff
2. provider/schema used
3. generation command used
4. `dart pub get` result for generated package
5. smoke test evidence (preview/up output summary)

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
