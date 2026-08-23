package dartir

type ResourceKind string

const (
	ProviderResource  ResourceKind = "provider"
	ComponentResource ResourceKind = "component"
	CustomResource    ResourceKind = "custom"
)

type ResourceClass struct {
	Name                           string
	Docs                           string
	Kind                           ResourceKind
	Imports                        []Import
	ArgsClass                      string
	HasDefaultArgs                 bool
	ArgsDocs                       string
	TokenLiteral                   string
	HasPackageRegistration         bool
	AdditionalSecretOutputLiterals []string
	Outputs                        []ResourceOutput
	ConstructorAssignments         []Assignment
	Members                        ResourceMembers
}

type ResourceOutput struct {
	Name string
	Docs string
	Type string
}
