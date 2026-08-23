package dartir

type RootLibrary struct {
	HasGeneratedModules bool
	Modules             []ModuleNamespace
}

type ModuleNamespace struct {
	ImportURI    string
	ImportPrefix string
	ObjectName   string
	ClassName    string
	Symbols      []NamespaceSymbol
}

type NamespaceSymbol struct {
	Name       string
	Expression string
}
