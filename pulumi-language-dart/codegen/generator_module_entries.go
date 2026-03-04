package codegen

import codegenerator "github.com/kingwill101/pulumi-dart/pulumi-language-dart/generator"

// moduleAliasSpec aliases the generator-layer alias descriptor type.
type moduleAliasSpec = codegenerator.AliasSpec

// moduleLibraryPathForSymbolFile maps a generated symbol file path to its
// module library entry file path.
func moduleLibraryPathForSymbolFile(symbolFilePath string) string {
	return codegenerator.ModuleLibraryPathForSymbolFile(symbolFilePath)
}

// moduleExportPathsFromContent parses export directives from a module library
// file body.
func moduleExportPathsFromContent(content []byte) []string {
	return codegenerator.ModuleExportPathsFromContent(content)
}

// generatedAliasedModuleLibraryFile builds a module library source that exports
// both original and alias paths.
func generatedAliasedModuleLibraryFile(moduleFilePath string, baseContent []byte, aliases []moduleAliasSpec) []byte {
	return codegenerator.GeneratedAliasedModuleLibraryFile(moduleFilePath, baseContent, aliases)
}

// generatedModuleLibraryFiles builds library files for all symbol file paths.
func generatedModuleLibraryFiles(symbolFilePaths []string) map[string][]byte {
	return codegenerator.GeneratedModuleLibraryFiles(symbolFilePaths)
}

// generatedPublicModuleEntryPoints creates top-level entry points (for example
// package imports like package:provider/provider.dart) from generated sources.
func generatedPublicModuleEntryPoints(packageName string, sdkSources map[string][]byte) map[string][]byte {
	return codegenerator.GeneratedPublicModuleEntryPoints(packageName, sdkSources)
}

// relativeImportPath returns the normalized relative import path from one file
// to another.
func relativeImportPath(fromFile, toFile string) string {
	return codegenerator.RelativeImportPath(fromFile, toFile)
}
