# pulumi_generator

`pulumi_generator` is a `source_gen` builder that emits registration extensions
for Pulumi resource classes.

Given a resource class that:
- extends `Resource`
- defines a constant `_resourceType`

the builder emits `<file>.pulumi.dart` with an extension that registers a
resource factory in `ResourceRegistry`.

## Usage

Enable the builder with `build_runner`:

```bash
dart run build_runner build
```

Generated files use the `.pulumi.dart` extension and are written next to the
source library.

## Status

This package is currently a focused building block for Pulumi Dart codegen.
It is intentionally small and validated by unit tests in `test/`.
