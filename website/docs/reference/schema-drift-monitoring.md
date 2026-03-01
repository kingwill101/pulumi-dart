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
dart run tool/check_schema_drift.dart --pretty
```

Check one provider:

```bash
dart run tool/check_schema_drift.dart --provider aws --pretty
```

Fail non-zero if any drift is detected:

```bash
dart run tool/check_schema_drift.dart --fail-on-drift
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

1. Regenerate affected provider SDK from latest schema
2. Commit updated `packages/sdks/schemas/<provider>.schema.json`
3. Commit regenerated package output under `packages/sdks/<provider>/`
4. Re-run drift check locally

## Maintaining provider scope

To add/remove providers from drift monitoring, update:

- `packages/sdks/schema_sources.json`

## Next steps

- [Generate provider SDKs](../providers/generate-provider-sdk.md)
- [Dependency registry](../providers/dependency-registry.md)

## Related links

- [Community contribution guidance](./community-support.md)
