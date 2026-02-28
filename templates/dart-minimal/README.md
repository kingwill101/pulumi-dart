# Dart Minimal Template

Local usage:

```bash
pulumi new ./templates/dart-minimal -y --name my-dart-stack --stack dev --secrets-provider passphrase
```

Remote usage:

```bash
pulumi new https://github.com/pulumi/pulumi-dart/tree/main/templates/dart-minimal -y --name my-dart-stack --stack dev --secrets-provider passphrase
```

`pulumi-language-dart` rewrites `pulumi` dependency source in `pubspec.yaml` during
`pulumi new` so template installs work in clean environments.
