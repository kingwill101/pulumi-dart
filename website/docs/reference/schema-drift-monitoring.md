---
sidebar_position: 4
---

# Schema Drift Monitoring

This project monitors upstream Pulumi provider schemas for drift against the schema snapshots currently tracked in this repository.

## What is checked

For each provider in `packages/sdks/schema_sources.json`:

- local schema version in `packages/sdks/schemas/<provider>.schema.json`
- upstream schema version from Pulumi Registry
- canonical JSON SHA-256 checksum of local vs upstream schema
- generated package version parity (`packages/sdks/<provider>/pubspec.yaml` vs local schema version)

## Drift definition

A provider is considered drifted when either of these is true:

- upstream schema version changed
- upstream schema canonical checksum changed

Checksum drift catches cases where schema content changes without a version bump.

## Local usage

Check all providers:

```bash
dart run repodoc schema:check
```

Check one provider:

```bash
dart run repodoc schema:check --provider aws
```

Fail non-zero if any drift is detected:

```bash
dart run repodoc schema:check --fail-on-drift
```

## CI pipeline

Workflow:

- `.github/workflows/dart-schema-drift.yml`

Behavior:

- runs on schedule (daily), manual dispatch, and relevant pull requests
- runs one matrix job per provider from `packages/sdks/schema_sources.json`
- uploads per-provider JSON reports as workflow artifacts
- fails provider job when drift is detected

## Update workflow when drift is detected

Update one provider deliberately with `repodoc`, then review both the schema and
generated Dart changes:

```bash
repodoc packages:update --provider <provider>
repodoc schema:check --provider <provider>
```

Commit the updated schema under `packages/sdks/schemas/` together with the
regenerated package under `packages/sdks/<provider>/`.

## Runtime, SDK, and fixture drift

Provider schema checks do not cover changes to the Pulumi language runtime,
protocol, code generator, Automation API, or hand-written provider overlays.
Review those separately:

```bash
repodoc upstream:check --core-only
repodoc upstream:check --provider aws
repodoc upstream:check --details
```

Language conformance fixtures are generated from the Pulumi version pinned in
`thirdparty/pulumi`. After updating that submodule, regenerate one affected
upstream case first:

```bash
devenv shell -- bash -c '
  cd pulumi-language-dart
  PULUMI_ACCEPT=true go test -count=1 -v -timeout=10m \
    -run "^TestLanguageConformance$/^<upstream-test-name>$" .
'
```

Then regenerate all supported snapshots and immediately run the suite without
accept mode:

```bash
PULUMI_ACCEPT=true devenv shell -- language-conformance-test
devenv shell -- language-conformance-test
```

Review changes under `pulumi-language-dart/testdata/published`; never edit those
generated snapshots by hand. Files in
`pulumi-language-dart/testdata/providers` and
`pulumi-language-dart/testdata/policies` are maintained inputs and should only
change intentionally.

## Maintaining provider scope

To add/remove providers from drift monitoring, update:

- `packages/sdks/schema_sources.json`

## Next steps

- [Generate provider SDKs](../providers/generate-provider-sdk.md)
- [Dependency registry](../providers/dependency-registry.md)
- [Upstream maintenance](https://github.com/kingwill101/pulumi-dart/blob/master/docs/upstream-maintenance.md)

## Related links

- [Community contribution guidance](./community-support.md)
