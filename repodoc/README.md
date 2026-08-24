# repodoc

`repodoc` is the unified repository-maintenance CLI for Pulumi Dart. It owns
provider generation and updates, schema and upstream audits, parity checks, and
direct integration-test orchestration. Commands use Artisanal for consistent
help, progress, tables, errors, and shell output.

## Running repodoc

Run commands from anywhere inside the repository's devenv shell:

```bash
devenv shell
repodoc --help
repodoc <command> --help
```

The devenv script compiles `repodoc` on first use and recompiles it whenever its
sources or workspace dependency files change. To run the Dart entrypoint
without that compiled-command cache:

```bash
dart run repodoc/bin/repodoc.dart --help
```

## Commands

| Command | Purpose |
| --- | --- |
| `schema:check` | Compare tracked provider schemas with current upstream releases. |
| `packages:generate` | Generate one or more Dart provider SDKs from tracked schemas. |
| `packages:update` | Download, validate, regenerate, and analyze one provider update. |
| `packages:remove` | Remove provider code, schema, examples, and tracking metadata. |
| `packages:check-workspace` | Validate generated-package workspace conventions. |
| `packages:verify-generated` | Verify tracked generated output is reproducible. |
| `upstream:check` | Audit recent upstream SDK and provider changes requiring review. |
| `parity:sdk` | Compare the Dart SDK test surface with upstream language SDKs. |
| `parity:integration` | Audit integration-test parity with upstream repositories. |
| `integration:matrix` | Build a balanced direct-integration-test shard matrix. |
| `integration:prewarm` | Precompile Dart kernels used by integration tests. |
| `integration:run` | Run selected integration tests directly, without Dagger. |
| `tools:check` | Verify repository generation prerequisites. |

The command-specific `--help` output is the source of truth for flags and
defaults.

## Provider maintenance

Check all tracked schemas or limit the check to one provider:

```bash
repodoc schema:check
repodoc schema:check --provider aws
repodoc schema:check --fail-on-drift
repodoc schema:check --json --pretty
```

Generate providers from their currently tracked schemas:

```bash
repodoc packages:generate --provider aws
repodoc packages:generate --provider aws --provider gcp
```

Resolve and apply the latest upstream release for one provider:

```bash
repodoc packages:update --provider aws
```

`packages:update` changes the tracked schema and generated SDK, then analyzes
the result. Review its version/source table and the resulting Git diff before
committing.

Provider removal is a dry run unless `--yes` is supplied:

```bash
repodoc packages:remove --provider alicloud,f5bigip
repodoc packages:remove --provider alicloud,f5bigip --yes
```

The applying form removes generated code and associated tracking data. Commit
or stash overlapping work before using it.

## Integration tests

Prepare kernels, inspect the balanced matrix, or run one test directly:

```bash
repodoc integration:prewarm
repodoc integration:matrix --partitions 8
repodoc integration:run --run '^TestEmptyDart$' --timeout 10m
```

CI uses the same integration subsystem through the lightweight
`repodoc_integration.dart` entrypoint. Keeping this entrypoint limited to
integration commands prevents unrelated command constructors from blocking the
integration workflow.

## Upstream and parity audits

```bash
repodoc upstream:check --core-only
repodoc upstream:check --provider aws
repodoc upstream:check --details
repodoc parity:sdk
repodoc parity:integration
```

The upstream review ledger is `repodoc/upstream_review.json`. See
[`docs/upstream-maintenance.md`](../docs/upstream-maintenance.md) for its review
semantics and maintenance workflow.

## Development

Commands and their focused services live in
`lib/src/commands/<subsystem>/`. Cross-cutting repository utilities live in
`lib/src/infrastructure/`; command implementations should not accumulate
unrelated orchestration helpers.

Run the package tests from the workspace root:

```bash
dart test repodoc/test
```
