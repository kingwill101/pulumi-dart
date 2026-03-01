---
sidebar_position: 4
---

# Author a Provider Plugin in Dart

Pulumi Dart includes provider-authoring APIs in `package:pulumi/provider.dart`.

Use this when you are implementing a Pulumi provider plugin process (not just
consuming generated SDK packages).

## What you implement

At minimum, implement a `Provider` subclass and `create(...)`:

```dart
import 'package:pulumi/provider.dart';

class ExampleProvider extends Provider {
  ExampleProvider() : super(version: '0.1.0', schema: '{"name":"example"}');

  @override
  Future<CreateResult> create(String urn, Map<String, dynamic> inputs) async {
    return CreateResult(id: 'resource-1', outs: <String, dynamic>{...inputs});
  }
}
```

## Start the provider server

In `main`, pass CLI args to `serve(...)`:

```dart
Future<void> main(List<String> args) async {
  await serve(ExampleProvider(), args);
}
```

Pulumi launches your plugin process and attaches over gRPC.

## Common override points

- `check(...)` / `checkConfig(...)`: validate and normalize inputs
- `diff(...)` / `diffConfig(...)`: report whether updates change/replace
- `read(...)`: refresh state from provider backing system
- `update(...)` / `delete(...)`: mutate and tear down resources
- `invoke(...)`: implement function tokens (`pkg:module:fn`)
- `call(...)` / `construct(...)`: support component methods/components
- `parameterizeArgs(...)` / `parameterizeValue(...)`: optional parameterized
  package support

## Error behavior

- Throw `InputPropertyError` or `InputPropertiesError` for user input issues;
  the server maps these to rich gRPC invalid-argument details.
- Unimplemented default operations surface as explicit unsupported-operation
  errors and are mapped to `unimplemented` gRPC responses.

## Diff detail support

`DiffResult` supports both coarse and detailed semantics:

- `changes`, `replaces`, `stables`, `deleteBeforeReplace`
- `diffs`
- `detailedDiff` via `Map<String, PropertyDiff>`

Use `PropertyDiffKind` (`add`, `updateReplace`, etc.) for per-property change
classification.

## End-to-end references

- Cookbook example: `pulumi-dart/example/provider_authoring_example.dart`
- Full integration fixture:
  `integration_tests/provider_authoring/dart/bin/provider_plugin.dart`

## Next steps

- [Generate provider SDKs from schemas](./generate-provider-sdk.md)
- [Run local smoke tests](./local-smoke-tests.md)
