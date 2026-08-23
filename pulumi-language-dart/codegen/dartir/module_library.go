package dartir

type ModuleLibrary struct {
	Imports []string
	Exports []string
	Aliases []ModuleAlias
}

type ModuleAlias struct {
	Name       string
	Expression string
}
