package codegen

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

func generatedPackageReadme(spec *schemair.Package, packageName, packagePath, gitURL, gitRef string) []byte {
	gitURL = strings.TrimSpace(gitURL)
	if gitURL == "" {
		gitURL = "https://github.com/kingwill101/pulumi-dart.git"
	}
	gitRef = strings.TrimSpace(gitRef)
	if gitRef == "" {
		gitRef = "master"
	}
	description := strings.TrimSpace(spec.Description)
	if description == "" {
		description = fmt.Sprintf("Dart SDK for the Pulumi %s provider.", spec.Name)
	}
	providerDocs := fmt.Sprintf(
		"\nProvider documentation: [Pulumi Registry](https://www.pulumi.com/registry/packages/%s/)\n",
		spec.Name,
	)
	if repository := strings.TrimSpace(spec.Repository); repository != "" {
		providerDocs += fmt.Sprintf("Upstream repository: [%s](%s)\n", repository, repository)
	}
	return []byte(fmt.Sprintf(`# %s

%s
%s
This package is generated from the upstream Pulumi provider schema. It requires
the [Pulumi Dart SDK](https://pub.dev/packages/pulumi) and the
`+"`pulumi-language-dart`"+` language host.

## Installation

~~~sh
dart pub add %s
~~~

## Usage

~~~dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:%s/%s.dart' as provider;
~~~

Resources are grouped by provider module. For example, a resource constructor
is exposed as `+"`provider.<module>.<Resource>(...)`"+`. See
[`+"`example/main.dart`"+`](example/main.dart) for a runnable example.

~~~sh
dart pub get
pulumi preview
pulumi up
~~~

Generated resource arguments accept Pulumi `+"`Input<T>`"+` values. Plain Dart
values can be converted with `+"`.input()`"+` after importing
`+"`package:pulumi/pulumi.dart`"+`.

## Alternative: Use directly from GitHub

~~~yaml
dependencies:
  %s:
    git:
      url: %s
      path: packages/sdks/%s
      ref: %s
~~~

For package-specific resources, arguments, and outputs, use the generated Dart
API documentation and the upstream provider documentation linked above.
`, packageName, description, providerDocs, packageName, packageName, packageName, packageName, gitURL, packagePath, gitRef))
}
