# pulumi (Dart SDK)

Core Pulumi runtime SDK for Dart.

## Development

Install dependencies:

```bash
dart pub get
```

Run tests:

```bash
dart test
```

Generate lcov coverage:

```bash
dart test --coverage-path=coverage/lcov.info --coverage-package='^pulumi$'
```

Coverage artifact policy:

- canonical local/CI lcov path: `pulumi-dart/coverage/lcov.info`
- regenerate with `task test:coverage` from repo root
- enforce non-regression with `task test:coverage:ratchet`
- use `task test:mutation:dry:coverage` to prioritize weakly tested runtime surface
- current line coverage baseline: `29.27%`

Run static analysis:

```bash
dart analyze
```

## Mutation Testing

This package is configured to use [`mutation_test`](https://pub.dev/packages/mutation_test).

Config file:

- `mutation-test.xml`

Dry run (counts mutants without running tests):

```bash
dart run mutation_test --dry mutation-test.xml
```

Full run:

```bash
dart run mutation_test mutation-test.xml
```

At repository root, you can also use Taskfile helpers:

```bash
task test:coverage
task test:mutation:dry
task test:mutation:dry:coverage
task test:mutation
task test:mutation:coverage
```

Optional coverage-guided run (faster mutation pass):

```bash
task test:mutation COVERAGE_LCOV=/abs/path/to/lcov.info
```

Current mutation dry-run hotspots (prioritized for test hardening):

1. `lib/src/deployment/deployment.dart`
2. `lib/src/callback_server.dart`
3. `lib/src/resource/resource.dart`
4. `lib/src/serializer.dart`
5. `lib/src/deserializer.dart`
