package main

import codegenerator "github.com/kingwill101/pulumi-dart/pulumi-language-dart/generator"

type moduleAliasSpec = codegenerator.AliasSpec

func moduleLibraryPathForSymbolFile(symbolFilePath string) string {
	return codegenerator.ModuleLibraryPathForSymbolFile(symbolFilePath)
}

func moduleExportPathsFromContent(content []byte) []string {
	return codegenerator.ModuleExportPathsFromContent(content)
}

func generatedAliasedModuleLibraryFile(moduleFilePath string, baseContent []byte, aliases []moduleAliasSpec) []byte {
	return codegenerator.GeneratedAliasedModuleLibraryFile(moduleFilePath, baseContent, aliases)
}

func generatedModuleLibraryFiles(symbolFilePaths []string) map[string][]byte {
	return codegenerator.GeneratedModuleLibraryFiles(symbolFilePaths)
}

func generatedPublicModuleEntryPoints(packageName string, sdkSources map[string][]byte) map[string][]byte {
	return codegenerator.GeneratedPublicModuleEntryPoints(packageName, sdkSources)
}

func relativeImportPath(fromFile, toFile string) string {
	return codegenerator.RelativeImportPath(fromFile, toFile)
}
