package codegen

import "sort"

func (lowerer programLowerer) sortedImports() []dartProgramImport {
	keys := make([]string, 0, len(lowerer.imports))
	for key := range lowerer.imports {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	imports := make([]dartProgramImport, len(keys))
	for index, key := range keys {
		imports[index] = lowerer.imports[key]
	}
	return imports
}
