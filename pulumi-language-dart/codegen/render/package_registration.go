package render

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func PackageRegistration(registration dartir.PackageRegistration) []byte {
	downloadURLLine := ""
	if registration.DownloadURL != "" {
		downloadURLLine = fmt.Sprintf("\n  downloadUrl: %q,", registration.DownloadURL)
	}
	parameterizationField := "parameterization"
	if registration.IsExtension {
		parameterizationField = "extensionParameterization"
	}
	return []byte(fmt.Sprintf(
		`import 'package:pulumi/pulumi.dart' as pulumi;

final registerPackageRequest = pulumi.RegisterPackageRequest(
  name: %q,
  version: %q,%s
  %s: pulumi.Parameterization(
    name: %q,
    version: %q,
    value: %s,
  ),
);
`,
		registration.PluginName,
		registration.PluginVersion,
		downloadURLLine,
		parameterizationField,
		registration.PackageName,
		registration.PackageVersion,
		byteListLiteral(registration.Value),
	))
}

func byteListLiteral(value []byte) string {
	if len(value) == 0 {
		return "const <int>[]"
	}
	values := make([]string, len(value))
	for index, item := range value {
		values[index] = strconv.Itoa(int(item))
	}
	return "<int>[" + strings.Join(values, ", ") + "]"
}
