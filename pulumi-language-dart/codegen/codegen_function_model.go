package codegen

type generatedFunctionSpec struct {
	Token      string
	ModulePath string
	Function   packageFunctionSpec
	FuncName   string
}
