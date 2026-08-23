package codegen

import (
	"fmt"
	"strings"
)

func generatedPackageExampleMain(packageName string) []byte {
	return []byte(fmt.Sprintf(`// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:%s/%s.dart' as provider;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    // Add resources from package:%s.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
`, packageName, packageName, packageName))
}

func generatedPackageReadme(packageName, packagePath, gitURL, gitRef string) []byte {
	gitURL = strings.TrimSpace(gitURL)
	if gitURL == "" {
		gitURL = "https://github.com/kingwill101/pulumi-dart.git"
	}
	gitRef = strings.TrimSpace(gitRef)
	if gitRef == "" {
		gitRef = "main"
	}
	return []byte(fmt.Sprintf(`# %s

Generated Pulumi provider SDK for Dart.

## Installation

~~~sh
dart pub add %s
~~~

## Usage

~~~dart
import 'package:%s/%s.dart' as provider;
~~~

## Alternative: Use directly from GitHub

~~~yaml
dependencies:
  %s:
    git:
      url: %s
      path: packages/%s
      ref: %s
~~~

See the example/ directory for a runnable sample.

_This file is preserved across SDK regeneration done via task generate:<provider>._
`, packageName, packageName, packageName, packageName, packageName, gitURL, packagePath, gitRef))
}

func generatedPackageChangelog(version string) []byte {
	if strings.TrimSpace(version) == "" {
		version = "0.1.0"
	}
	return []byte(fmt.Sprintf(`# Changelog

All notable changes to this package will be documented in this file.

## %s

- Initial generated release.

_This file is preserved across SDK regeneration done via task generate:<provider>._
`, version))
}

func generatedPackageAnalysisOptions() []byte {
	return []byte("include: package:lints/recommended.yaml\n")
}
