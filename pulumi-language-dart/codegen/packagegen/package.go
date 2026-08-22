// Package packagegen assembles a generated Dart SDK entirely in memory.
//
// Callers are responsible for resolving schemas and dependencies before this
// package is invoked, and for writing the returned files afterward.
package packagegen

import (
	"fmt"
	"sort"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

// Input contains the semantic package and Dart package identity required to
// render an SDK. It deliberately contains no filesystem paths or environment
// configuration.
type Input struct {
	Schema         *codegen.PackageSchema
	PackageName    string
	SDKLibraryName string
}

// File is one deterministic, package-relative generated output.
type File struct {
	Path     string
	Contents []byte
}

// Result is the complete Dart source portion of a generated SDK package.
type Result struct {
	Files []File
}

// Generate renders and orders all Dart library files for a package.
func Generate(input Input) (Result, error) {
	if input.Schema == nil {
		return Result{}, fmt.Errorf("package schema is required")
	}
	if input.PackageName == "" {
		return Result{}, fmt.Errorf("Dart package name is required")
	}

	sdkSources, moduleSymbols := codegen.GeneratedPackageSources(
		input.Schema,
		input.PackageName,
		input.SDKLibraryName,
	)
	publicSources := codegen.GeneratedPublicModuleEntryPoints(input.PackageName, sdkSources)
	rootPath := input.PackageName + ".dart"
	publicSources[rootPath] = codegen.GeneratedPackageRootLibrary(
		input.PackageName,
		input.Schema,
		moduleSymbols,
	)

	files := make([]File, 0, len(sdkSources)+len(publicSources))
	for path, contents := range sdkSources {
		files = append(files, File{Path: "src/" + path, Contents: contents})
	}
	for path, contents := range publicSources {
		files = append(files, File{Path: path, Contents: contents})
	}
	sort.Slice(files, func(i, j int) bool { return files[i].Path < files[j].Path })
	return Result{Files: files}, nil
}
