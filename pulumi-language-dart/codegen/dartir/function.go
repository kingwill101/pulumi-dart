package dartir

type FunctionsLibrary struct {
	Imports   []Import
	Functions []InvokeFunction
}

type InvokeFunction struct {
	Name                   string
	Docs                   string
	ArgsDocsMacro          string
	ArgsClass              string
	HasArgs                bool
	ResultClass            string
	TokenLiteral           string
	HasPackageRegistration bool
	MultiArgumentInputs    bool
	Parameters             []InvokeParameter
}

type InvokeParameter struct {
	Name     string
	DartType string
}
