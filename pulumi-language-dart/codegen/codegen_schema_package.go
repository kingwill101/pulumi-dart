package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func newBoundPackageSchema(pkg *schema.Package) *packageSchema {
	version := ""
	if pkg.Version != nil {
		version = pkg.Version.String()
	}
	return &packageSchema{
		Name: pkg.Name, Namespace: pkg.Namespace, Version: version,
		Description: strings.TrimSpace(pkg.Description), License: strings.TrimSpace(pkg.License),
		Homepage: strings.TrimSpace(pkg.Homepage), Repository: strings.TrimSpace(pkg.Repository),
		Keywords: append([]string(nil), pkg.Keywords...), Parameterization: boundPackageParameterization(pkg, version),
		Resources: map[string]packageResourceSpec{}, Functions: map[string]packageFunctionSpec{},
		Enums: []packageEnumSpec{}, ObjectClasses: []packageObjectClassSpec{},
	}
}

func boundPackageParameterization(pkg *schema.Package, packageVersion string) *packageParameterizationSpec {
	if pkg.Parameterization == nil && pkg.ExtensionParameterization == nil {
		return nil
	}
	isExtension := pkg.ExtensionParameterization != nil
	pluginName := ""
	pluginVersion := ""
	var value []byte
	if isExtension {
		pluginName = pkg.ExtensionParameterization.BaseProvider.Name
		pluginVersion = pkg.ExtensionParameterization.BaseProvider.Version.String()
		value = pkg.ExtensionParameterization.Parameter
	} else {
		pluginName = pkg.Parameterization.BasePlugin.Name
		pluginVersion = pkg.Parameterization.BasePlugin.Version.String()
		value = pkg.Parameterization.Parameter
	}
	if packageVersion == "" {
		packageVersion = pluginVersion
	}
	if pluginVersion == "" {
		pluginVersion = packageVersion
	}
	if pluginVersion == "" {
		pluginVersion = "0.0.1"
	}
	if packageVersion == "" {
		packageVersion = pluginVersion
	}
	return &packageParameterizationSpec{
		IsExtension: isExtension, PluginName: pluginName, PluginVersion: pluginVersion,
		PackageName: pkg.Name, PackageVersion: packageVersion, DownloadURL: pkg.PluginDownloadURL,
		Value: append([]byte(nil), value...),
	}
}
