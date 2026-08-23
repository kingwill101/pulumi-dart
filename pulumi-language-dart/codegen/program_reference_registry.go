package codegen

import "sort"

func (lowerer programLowerer) addResourceReference(token, pkg, module, className string) {
	lowerer.resourceReferences[token] = dartProgramResourceReference{
		Token: token, Package: pkg, Module: module, ClassName: className,
	}
}

func (lowerer programLowerer) sortedResourceReferences() []dartProgramResourceReference {
	tokens := make([]string, 0, len(lowerer.resourceReferences))
	for token := range lowerer.resourceReferences {
		tokens = append(tokens, token)
	}
	sort.Strings(tokens)
	result := make([]dartProgramResourceReference, len(tokens))
	for index, token := range tokens {
		result[index] = lowerer.resourceReferences[token]
	}
	return result
}
