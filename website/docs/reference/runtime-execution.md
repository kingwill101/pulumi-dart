---
sidebar_position: 2
---

# Runtime Execution and Entrypoint Resolution

## Runtime responsibilities

- `pulumi-language-dart` is the Pulumi language host for Dart.
- It reports required provider plugins to Pulumi.
- It installs Dart dependencies (`dart pub get`) when requested by Pulumi.
- It resolves program directory and entrypoint.
- It executes the Pulumi Dart program (compiled executable or source execution).
- It passes Pulumi run context to the Dart process via environment variables.
- Pulumi engine owns provider plugin lifecycle after dependency reporting.

## Provider/plugin resolution flow

### Source of required packages

- Host reads:
  - `pubspec.yaml` dependencies (`pulumi_*` packages)
  - optional `packages` block in `Pulumi.yaml`
- Name mapping examples:
  - `pulumi_aws` -> plugin `aws`
  - `pulumi_awsx` -> plugin `awsx`

### Version and server hints

- Host includes version/server hints when derivable from:
  - `pubspec.yaml` constraints
  - `Pulumi.yaml` package overrides
- `Pulumi.yaml` package entries can provide:
  - source provider mapping
  - version override
  - plugin server override
  - parameterization metadata
- Pulumi uses returned plugin metadata to resolve/install provider plugins.
- Default plugin cache location is `~/.pulumi/plugins` (or `$PULUMI_HOME/plugins` when `PULUMI_HOME` is set).
- Use `pulumi plugin ls` to inspect installed provider plugins.

## Program execution selection

- Precedence:
  1. language host flag `--binary` (precompiled executable)
  2. `runtime.options.binary` from `Pulumi.yaml`
  3. compile and run entrypoint (`dart compile exe`)
  4. source execution (`dart run`) for debugger attach or non-concrete entrypoint
- Invalid combination:
  - `--binary` with runtime `binary`/`buildTarget`
  - runtime `binary` with runtime `buildTarget`

## Runtime options

- Configure under `runtime.options` in `Pulumi.yaml`:

```yaml title="Pulumi.yaml"
name: my-dart-stack
runtime:
  name: dart
  options:
    # Run this executable directly (skip compile-from-source).
    # binary: ./dist/my-stack

    # Compile to this target path before running.
    # buildTarget: ./.dart_tool/pulumi/my-stack
```

- Validation:
  - `binary` must be a string
  - `buildTarget` must be a string
  - `binary` and `buildTarget` are mutually exclusive
  - `buildTarget` requires concrete entrypoint (not `.`)

## Compile and cache behavior

- Compile command when no explicit binary and not debugger-attached:

```bash
dart compile exe <entrypoint> -o <target>
```

- Default target:
  - `.dart_tool/pulumi/cache/exe/program-<fingerprint>[.exe]`
- Fingerprint inputs:
  - resolved entrypoint
  - `pubspec.yaml`
  - `pubspec.lock`
  - `.dart` files under `bin/`, `lib/`, and `tool/`
- Reuse behavior:
  - if fingerprint target exists, host reuses executable (no recompile)
- Warm-up behavior:
  - `GetRequiredPackages` performs compile-cache warm-up for concrete source entrypoints
  - this primes cache before `Run` during preview/update flows

## Program directory and entrypoint precedence

### Program directory

- 1. `ProgramInfo.programDirectory` (if provided)
- 2. request `pwd`

### Entrypoint

- 1. if `ProgramInfo.entryPoint` is set and not `.`, use it
- 2. if entrypoint is a simple token (`infra`) and `bin/<token>.dart` exists, use `bin/<token>.dart`
- 3. if request `program == "."`:
  - use `bin/main.dart` if present
  - else use `bin/<pubspec.name>.dart` if present
  - else keep `.`
- 4. otherwise use request `program` as-is

## Debugger attach behavior

- When `attachDebugger` is enabled:
  - host runs from source with VM service flags
  - compile-cache execution is bypassed
  - host reports `vmServiceUri` to Pulumi debugger attachment flow
  - Pulumi output includes the VM service endpoint for debugger attach

## Environment passed to the Dart program

- Pulumi runtime context variables include:
  - `PULUMI_MONITOR`
  - `PULUMI_ENGINE`
  - `PULUMI_PROJECT`
  - `PULUMI_STACK`
  - `PULUMI_PWD`
  - `PULUMI_DRY_RUN`
  - `PULUMI_CONFIG`
  - `PULUMI_CONFIG_SECRET_KEYS`

## Practical guidance

- Prefer default runtime behavior for local development.
- Use `runtime.options.binary` for prebuilt CI artifacts.
- Use `runtime.options.buildTarget` for deterministic output paths.
- Use `pulumi -v3 preview` for runtime troubleshooting and host path verification.

## Related

- [Debugging Pulumi Dart Runtime](./debugging-dart-runtime.md)
