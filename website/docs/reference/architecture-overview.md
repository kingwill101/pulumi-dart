---
sidebar_position: 1
---

# Architecture Overview

## Core components

- `pulumi` CLI:
  - orchestrates preview/apply/state lifecycle
- `pulumi-language-dart`:
  - language host plugin for `runtime: dart`
- Dart program (`package:pulumi`):
  - registers resources/outputs through Pulumi RPC
- Provider plugins (`aws`, `random`, `awsx`, etc.):
  - implement resource operations

## End-to-end execution flow

- 1. run `pulumi preview` or `pulumi up`
- 2. Pulumi starts `pulumi-language-dart`
- 3. host resolves entrypoint/runtime options and executes Dart program
- 4. program performs resource registrations/invokes via Pulumi monitor
- 5. Pulumi engine coordinates provider plugins and computes graph/plan
- 6. outputs finalize after provider operations complete

## Why plugin behavior is not only “Dart code”

- Generated Dart SDKs are schema wrappers.
- Actual CRUD/invoke behavior runs in provider plugins managed by Pulumi.
- Implications:
  - plugin discovery/versioning affects runtime behavior
  - preview/apply differences can come from provider-side computation
  - outputs may be unknown at preview and resolve at apply

## Why output values can be null or unknown in preview

- During preview, providers may not have concrete values for IDs/endpoints/ARNs.
- Pulumi represents these as unknown placeholders until apply.

## Why entrypoint and runtime options matter

- Language host decides:
  - stack program file selection
  - source execution (`dart run`) vs compiled execution
  - compile-cache reuse for repeated runs
- Use [Runtime execution and entrypoint resolution](./runtime-execution.md) for concrete precedence/configuration.

## Operational implication for teams

- Keep project layout predictable (`bin/main.dart` or `bin/<pubspec.name>.dart`).
- Pin runtime behavior with `runtime.options.binary`/`buildTarget` only when needed.
- Treat `preview` as safety gate; treat `up` as commit step.
