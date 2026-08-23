package dartir

type ObjectClass struct {
	Name       string
	Docs       string
	DocsMacro  string
	Imports    []Import
	Properties []ObjectProperty
}

type ObjectProperty struct {
	NameLiteral       string
	FieldName         string
	Docs              string
	FieldType         string
	ConstructorDocs   string
	Required          bool
	DefaultExpression string
	ToMapExpression   string
	FromMapExpression string
}
