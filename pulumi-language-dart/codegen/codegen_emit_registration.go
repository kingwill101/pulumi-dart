package codegen

import (
	"fmt"
	"strconv"
	"strings"
)

func generatedPackageRegistrationFile(parameterization *packageParameterizationSpec) []byte {
	if parameterization == nil ||
		parameterization.PluginName == "" ||
		parameterization.PluginVersion == "" ||
		parameterization.PackageVersion == "" {
		return nil
	}

	downloadURLLine := ""
	if parameterization.DownloadURL != "" {
		downloadURLLine = fmt.Sprintf("\n  downloadUrl: %q,", parameterization.DownloadURL)
	}

	return []byte(fmt.Sprintf(
		`import 'package:pulumi/pulumi.dart' as pulumi;

final registerPackageRequest = pulumi.RegisterPackageRequest(
  name: %q,
  version: %q,%s
  parameterization: pulumi.Parameterization(
    name: %q,
    version: %q,
    value: %s,
  ),
);
`,
		parameterization.PluginName,
		parameterization.PluginVersion,
		downloadURLLine,
		parameterization.PackageName,
		parameterization.PackageVersion,
		dartByteListLiteral(parameterization.Value),
	))
}

func dartByteListLiteral(value []byte) string {
	if len(value) == 0 {
		return "const <int>[]"
	}

	var b strings.Builder
	b.WriteString("<int>[")
	for i, v := range value {
		if i > 0 {
			b.WriteString(", ")
		}
		b.WriteString(strconv.Itoa(int(v)))
	}
	b.WriteString("]")
	return b.String()
}
