package codegen

func collectDartComponentImports(imports map[string]dartProgramResource, components []dartProgramComponent) {
	for _, component := range components {
		for _, resource := range component.Program.Resources {
			if resource.Package != "" {
				imports[resource.Package+"\x00"+resource.Module] = resource
			}
		}
		for _, imported := range component.Program.Imports {
			imports[imported.Package+"\x00"+imported.Module] = dartProgramResource{
				Package: imported.Package, Module: imported.Module,
			}
		}
	}
}
