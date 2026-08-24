package main

import (
	"fmt"
	"os"
	"path/filepath"
	"sort"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

func writeGeneratedSources(
	directory string,
	packageName string,
	spec *codegen.PackageSchema,
	record func(string),
) error {
	libDirectory := filepath.Join(directory, "lib")
	if err := os.MkdirAll(filepath.Join(libDirectory, "src"), 0o700); err != nil {
		return fmt.Errorf("failed to create generated SDK source directory: %w", err)
	}
	generated, err := codegen.GeneratePackage(codegen.PackageInput{
		Schema: spec, PackageName: packageName, SDKLibraryName: packageName + "_sdk",
	})
	if err != nil {
		return fmt.Errorf("failed to generate Dart package: %w", err)
	}
	for _, file := range generated.Files {
		outputPath, err := codegen.SafeOutputPath(libDirectory, filepath.FromSlash(file.Path))
		if err != nil {
			return fmt.Errorf("invalid generated Dart source path %q: %w", file.Path, err)
		}
		if err := writeGeneratedFile(outputPath, file.Contents); err != nil {
			return fmt.Errorf("failed to write generated Dart source file %s: %w", file.Path, err)
		}
		record(outputPath)
	}
	return nil
}

func writeGeneratedExtraFiles(
	req *pulumirpc.GeneratePackageRequest,
	packageName string,
	providerName string,
	version string,
	spec *codegen.PackageSchema,
	generatedPaths map[string]struct{},
) error {
	extraFiles := copyExtraFiles(req.GetExtraFiles())
	for filename, contents := range defaultGeneratedExtraFiles(packageName, providerName, version, spec) {
		if _, explicit := extraFiles[filename]; explicit {
			continue
		}
		outputPath, err := codegen.SafeOutputPath(req.GetDirectory(), filename)
		if err != nil {
			return fmt.Errorf("invalid default extra file path %q: %w", filename, err)
		}
		// LICENSE is derived from the schema SPDX identifier and must track it.
		// Other scaffolding is intentionally user-maintainable after generation.
		if filename != "LICENSE" {
			if _, err := os.Stat(outputPath); err == nil {
				continue
			} else if !os.IsNotExist(err) {
				return fmt.Errorf("failed to check default extra file %s: %w", filename, err)
			}
		}
		extraFiles[filename] = contents
	}
	return writeExtraFiles(req.GetDirectory(), extraFiles, generatedPaths)
}

func copyExtraFiles(files map[string][]byte) map[string][]byte {
	result := make(map[string][]byte, len(files))
	for name, contents := range files {
		result[name] = contents
	}
	return result
}

func writeExtraFiles(directory string, files map[string][]byte, generatedPaths map[string]struct{}) error {
	filenames := make([]string, 0, len(files))
	for filename := range files {
		filenames = append(filenames, filename)
	}
	sort.Strings(filenames)
	for _, filename := range filenames {
		outputPath, err := codegen.SafeOutputPath(directory, filename)
		if err != nil {
			return fmt.Errorf("invalid extra file path %q: %w", filename, err)
		}
		if _, conflict := generatedPaths[filepath.Clean(outputPath)]; conflict {
			return fmt.Errorf("extra file path %q conflicts with generated file output", filename)
		}
		if err := writeGeneratedFile(outputPath, files[filename]); err != nil {
			return fmt.Errorf("failed to write extra file %s: %w", filename, err)
		}
	}
	return nil
}

func writeGeneratedFile(path string, contents []byte) error {
	if err := os.MkdirAll(filepath.Dir(path), 0o700); err != nil {
		return err
	}
	return os.WriteFile(path, contents, 0o600)
}
