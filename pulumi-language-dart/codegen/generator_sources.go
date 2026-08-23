package codegen

func generatedPackageSources(spec *packageSchema, packageName, sdkLibraryName string) (map[string][]byte, map[string][]moduleAliasSpec) {
	plan := newSourcePlan(spec, packageName, sdkLibraryName)
	plan.reserveTypePaths()
	plan.reserveResourcePaths()
	plan.renderTypes()
	plan.renderResources()
	plan.renderFunctions()
	plan.renderSupportFiles()
	plan.renderModuleLibraries()
	return plan.result()
}
