# Pulumi Dart Templates

These are user-facing templates intended for `pulumi new`.

Available templates:

- `dart-minimal`: minimal stack project that validates language-host + SDK setup.
- `dart-random`: stack project with `pulumi_random` provider package wiring.

Use locally:

```bash
pulumi new ./templates/dart-minimal -y --name my-dart-stack --stack dev --secrets-provider passphrase
```

Use from GitHub:

```bash
pulumi new https://github.com/pulumi/pulumi-dart/tree/main/templates/dart-minimal -y --name my-dart-stack --stack dev --secrets-provider passphrase
```

During `pulumi new`, `pulumi-language-dart` normalizes the `pulumi` dependency source
for clean-environment compatibility. Override with:

- `PULUMI_DART_PULUMI_DEPENDENCY_PATH`
- `PULUMI_DART_PULUMI_DEPENDENCY_VERSION`
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL`
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH`
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF`

Disable template-time rewrite:

```bash
PULUMI_DART_TEMPLATE_REWRITE_PULUMI=false pulumi new ./templates/dart-minimal
```

Optional strict validation during generated SDK pubspec creation:

- `PULUMI_DART_VALIDATE_DEPENDENCY_PATHS=true`: fail when `path:` dependencies do not exist.
- `PULUMI_DART_VALIDATE_PUBDEV=true`: fail when hosted dependencies are not found on pub.dev.

When `PULUMI_DART_PULUMI_DEPENDENCY_PATH` is set during `pulumi new`, the template hook
also rewrites `pulumi_*` dependencies to local `packages/<provider>` paths when those
directories exist, enabling local multi-package development without publish steps.
