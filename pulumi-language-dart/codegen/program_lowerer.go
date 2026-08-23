package codegen

import (
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

type programLowerer struct {
	program                  *pcl.Program
	names                    map[string]string
	usedNames                map[string]int
	typedObjectNames         map[string]bool
	directObjectNames        map[string]bool
	imports                  map[string]dartProgramImport
	functions                map[string]programFunction
	methods                  map[string]programMethod
	resourceTypes            map[string]*schema.Resource
	resourceReferences       map[string]dartProgramResourceReference
	rangedResourceKinds      map[string]string
	needsAsyncInitialization *bool
	specialProviders         map[string]struct{}
	componentMode            bool
	deferredResolutions      map[string][]dartProgramDeferredResolution
}

func newProgramLowerer(program *pcl.Program) programLowerer {
	return programLowerer{
		program: program,
		names:   map[string]string{}, usedNames: map[string]int{},
		typedObjectNames: map[string]bool{}, directObjectNames: map[string]bool{}, imports: map[string]dartProgramImport{},
		functions:                programFunctions(program.Packages()),
		methods:                  programMethods(program.Packages()),
		resourceTypes:            programResourceTypes(program.Packages()),
		resourceReferences:       map[string]dartProgramResourceReference{},
		rangedResourceKinds:      map[string]string{},
		needsAsyncInitialization: new(bool),
		specialProviders:         map[string]struct{}{},
		deferredResolutions:      map[string][]dartProgramDeferredResolution{},
	}
}
