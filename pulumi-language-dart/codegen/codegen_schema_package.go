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
	if pkg.Parameterization == nil {
		return nil
	}
	pluginVersion := pkg.Parameterization.BasePlugin.Version.String()
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
		PluginName: pkg.Parameterization.BasePlugin.Name, PluginVersion: pluginVersion,
		PackageName: pkg.Name, PackageVersion: packageVersion, DownloadURL: pkg.PluginDownloadURL,
		Value: append([]byte(nil), pkg.Parameterization.Parameter...),
	}
}
