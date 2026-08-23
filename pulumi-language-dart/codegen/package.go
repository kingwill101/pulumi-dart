package codegen

import (
	"fmt"
	"sort"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

// PackageInput contains the semantic package and Dart package identity needed
// to render an SDK. It contains no filesystem paths or environment state.
type PackageInput struct {
	Schema         *schemair.Package
	PackageName    string
	SDKLibraryName string
}

// PackageFile is one deterministic, package-relative generated output.
type PackageFile struct {
	Path     string
	Contents []byte
}

// PackageResult is the complete Dart source portion of a generated SDK.
type PackageResult struct {
	Files []PackageFile
}

// GeneratePackage assembles and deterministically orders a generated Dart SDK.
func GeneratePackage(input PackageInput) (PackageResult, error) {
	if input.Schema == nil {
		return PackageResult{}, fmt.Errorf("package schema is required")
	}
	if input.PackageName == "" {
		return PackageResult{}, fmt.Errorf("Dart package name is required")
	}

	sdkSources, moduleSymbols := generatedPackageSources(
		input.Schema,
		input.PackageName,
		input.SDKLibraryName,
	)
	publicSources := generatedPublicModuleEntryPoints(input.PackageName, sdkSources)
	rootPath := input.PackageName + ".dart"
	publicSources[rootPath] = generatedPackageRootLibrary(input.PackageName, input.Schema, moduleSymbols)

	files := make([]PackageFile, 0, len(sdkSources)+len(publicSources))
	for path, contents := range sdkSources {
		files = append(files, PackageFile{Path: "src/" + path, Contents: contents})
	}
	for path, contents := range publicSources {
		files = append(files, PackageFile{Path: path, Contents: contents})
	}
	sort.Slice(files, func(i, j int) bool { return files[i].Path < files[j].Path })
	return PackageResult{Files: files}, nil
}
