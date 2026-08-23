package dartir

type Config struct {
	ClassName  string
	Docs       string
	Imports    []Import
	Properties []ConfigProperty
}

type ConfigProperty struct {
	NameLiteral     string
	FieldName       string
	Docs            string
	GetterType      string
	ParseExpression string
	Required        *RequiredConfigAccessor
}

type RequiredConfigAccessor struct {
	MethodName string
	ReturnType string
}
