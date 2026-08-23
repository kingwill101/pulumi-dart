package schemair

type Package struct {
	Name              string
	Namespace         string
	Version           string
	PluginDownloadURL string
	Description       string
	License           string
	Homepage          string
	Repository        string
	Keywords          []string
	Parameterization  *Parameterization
	Resources         map[string]Resource
	Functions         map[string]Function
	Config            *Config
	Enums             []Enum
	ObjectClasses     []ObjectClass
}

type Parameterization struct {
	IsExtension    bool
	PluginName     string
	PluginVersion  string
	PackageName    string
	PackageVersion string
	DownloadURL    string
	Value          []byte
}

type Resource struct {
	IsComponent      bool
	IsProvider       bool
	Comment          string
	StateClass       string
	ArgsClass        string
	HasDefaultArgs   bool
	OutputProperties []Property
	Methods          []ResourceMethod
	ReplaceOnChanges []string
}

type ResourceMethod struct {
	Name        string
	Token       string
	Comment     string
	ArgsClass   string
	ResultClass string
	ReturnType  Type
	ReturnPlain bool
	HasReturn   bool
}

type ObjectClass struct {
	ClassName              string
	CanonicalName          string
	ModulePath             string
	Comment                string
	UsesInputTypes         bool
	AllowMissingProperties bool
	Properties             []Property
}

type Property struct {
	Name              string
	FieldName         string
	Comment           string
	Required          bool
	Secret            bool
	DefaultExpression string
	TypeSpec          Type
	DartType          string
	ReferenceKind     string
	ReferenceType     string
	ReferenceWireType string
}

type Type struct {
	Kind              string
	DartType          string
	ReferenceType     string
	ReferenceWireType string
	ElementType       *Type
	IsExternalRef     bool
	ExternalImport    string
	ExternalAlias     string
}

type Enum struct {
	EnumName       string
	CanonicalName  string
	ModulePath     string
	Comment        string
	UnderlyingType string
	Values         []EnumValue
}

type EnumValue struct {
	Name    string
	Comment string
	Literal string
}

type Config struct {
	ClassName  string
	Comment    string
	Properties []Property
}

type NamedTypeRef struct {
	Kind             string
	Name             string
	CanonicalName    string
	UnderlyingType   string
	UseReferenceType bool
}
