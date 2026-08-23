# repodoc

The unified repository-maintenance CLI for Pulumi Dart. Commands are grouped
by subsystem and use Artisanal for consistent help, styling, errors, and shell
completion.

Run it from anywhere inside the repository:

```console
dart run repodoc/bin/repodoc.dart --help
repodoc schema:check --provider aws
dart run repodoc/bin/repodoc.dart packages:generate --provider aws
repodoc packages:update --provider aws
dart run repodoc/bin/repodoc.dart packages:check-workspace
dart run repodoc/bin/repodoc.dart parity:integration
dart run repodoc/bin/repodoc.dart parity:sdk
dart run repodoc/bin/repodoc.dart integration:matrix
dart run repodoc/bin/repodoc.dart integration:run --run TestEmptyDart
dart run repodoc/bin/repodoc.dart integration:prewarm
dart run repodoc/bin/repodoc.dart tools:check
```

Commands and their focused services live in `lib/src/commands/<subsystem>/`.
Cross-cutting repository utilities live in `lib/src/infrastructure/`; command
implementations should not accumulate unrelated orchestration helpers.
