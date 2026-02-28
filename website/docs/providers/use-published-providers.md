---
sidebar_position: 1
---

# Use Published Provider Packages

If a provider package is published on pub.dev, add it as a normal dependency.

## Install dependencies

```bash
dart pub add pulumi
dart pub add pulumi_random
```

## Import patterns

```dart
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/index.dart' as random;
```

## Module-level imports for larger providers

Generated packages expose module entrypoints under `lib/<module>.dart`.

Example with AWS:

```dart
import 'package:pulumi_aws/s3.dart' as s3;
import 'package:pulumi_aws/ec2.dart' as ec2;
```

This keeps symbols scoped and reduces collisions in larger programs.

## Package naming conventions

- Core SDK: `pulumi`
- Generated providers: `pulumi_<provider>`
  - examples: `pulumi_aws`, `pulumi_random`, `pulumi_google_native`

## When to avoid pub.dev and use local/git dependencies

Use local/git dependencies when:

- provider package is not published yet
- testing generator changes
- validating fixes for provider-specific schema issues

In these cases, switch to [Generate Provider SDKs from Schemas](./generate-provider-sdk.md).

## Next steps

- [Generate provider SDKs from schemas](./generate-provider-sdk.md)
- [Local smoke tests](./local-smoke-tests.md)

## Related links

- [Pulumi Registry](https://www.pulumi.com/registry/)
- [Dependency registry for generated SDKs](./dependency-registry.md)
