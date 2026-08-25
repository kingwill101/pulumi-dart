# Provider example sources

These Pulumi YAML and Dart programs are the maintained sources used to generate
provider packages' `example/main.dart` files. Run:

```bash
repodoc packages:docs --provider <name>
```

`repodoc` converts YAML programs through Pulumi's YAML-to-PCL converter and
asks `pulumi-language-dart` to generate Dart. A `main.dart` source is copied
and formatted directly; this is useful when upstream PCL conversion exposes a
code-generation gap or would require binding a prohibitively large external
schema. Neither path regenerates SDK source.

The initial upstream-derived sources are adapted from these Apache-2.0
repositories:

- `docker`: [pulumi/pulumi-docker](https://github.com/pulumi/pulumi-docker/blob/master/provider/pkg/docs-gen/examples/yaml/image.yaml)
- `docker-build`: [pulumi/pulumi-docker-build](https://github.com/pulumi/pulumi-docker-build/blob/main/examples/tests/unauthenticated/Pulumi.yaml)
- `pulumiservice`: [pulumi/pulumi-pulumiservice](https://github.com/pulumi/pulumi-pulumiservice/tree/main/examples/api/access-tokens/yaml)

The remaining providers have small curated examples based on their tracked
schemas. Keep every program focused on one representative resource,
credential-free where the provider permits it, and explicit about required
Pulumi configuration. Any adaptation from upstream should be explained in the
source file.
