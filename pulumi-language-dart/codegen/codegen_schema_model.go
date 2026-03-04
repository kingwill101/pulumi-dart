package codegen

type packageSchema struct {
	Name             string                         `json:"name"`
	Namespace        string                         `json:"namespace"`
	Version          string                         `json:"version"`
	Description      string                         `json:"description"`
	License          string                         `json:"license"`
	Homepage         string                         `json:"homepage"`
	Repository       string                         `json:"repository"`
	Keywords         []string                       `json:"keywords"`
	Parameterization *packageParameterizationSpec   `json:"-"`
	Resources        map[string]packageResourceSpec `json:"resources"`
	Functions        map[string]packageFunctionSpec `json:"functions"`
	Config           *packageConfigSpec             `json:"-"`
	Enums            []packageEnumSpec              `json:"-"`
	ObjectClasses    []packageObjectClassSpec       `json:"-"`
}

type packageParameterizationSpec struct {
	PluginName     string
	PluginVersion  string
	PackageName    string
	PackageVersion string
	DownloadURL    string
	Value          []byte
}

type packageResourceSpec struct {
	IsComponent      bool                  `json:"isComponent"`
	IsProvider       bool                  `json:"isProvider"`
	Comment          string                `json:"-"`
	StateClass       string                `json:"-"`
	ArgsClass        string                `json:"-"`
	OutputProperties []packagePropertySpec `json:"-"`
	Methods          []packageResourceMethodSpec
}

type packageFunctionSpec struct {
	Comment     string `json:"-"`
	HasArgs     bool   `json:"-"`
	ArgsClass   string `json:"-"`
	ResultClass string `json:"-"`
}

type packageResourceMethodSpec struct {
	Name        string `json:"-"`
	Token       string `json:"-"`
	Comment     string `json:"-"`
	ArgsClass   string `json:"-"`
	ResultClass string `json:"-"`
	HasReturn   bool   `json:"-"`
}

type packageObjectClassSpec struct {
	ClassName      string
	CanonicalName  string
	ModulePath     string
	Comment        string
	UsesInputTypes bool
	Properties     []packagePropertySpec
}

type packagePropertySpec struct {
	Name              string
	FieldName         string
	Comment           string
	Required          bool
	TypeSpec          packageTypeSpec
	DartType          string
	ReferenceKind     string
	ReferenceType     string
	ReferenceWireType string
}

type packageTypeSpec struct {
	Kind              string
	DartType          string
	ReferenceType     string
	ReferenceWireType string
	ElementType       *packageTypeSpec
	IsExternalRef     bool
	ExternalImport    string
	ExternalAlias     string
}

type packageEnumSpec struct {
	EnumName       string
	CanonicalName  string
	ModulePath     string
	Comment        string
	UnderlyingType string
	Values         []packageEnumValueSpec
}

type packageEnumValueSpec struct {
	Name    string
	Comment string
	Literal string
}

type packageConfigSpec struct {
	ClassName  string
	Comment    string
	Properties []packagePropertySpec
}

type packageNamedTypeRef struct {
	Kind             string
	Name             string
	CanonicalName    string
	UnderlyingType   string
	UseReferenceType bool
}

type rawPackageSchema struct {
	Name        string                     `json:"name"`
	Namespace   string                     `json:"namespace"`
	Version     string                     `json:"version"`
	Description string                     `json:"description"`
	License     string                     `json:"license"`
	Homepage    string                     `json:"homepage"`
	Repository  string                     `json:"repository"`
	Keywords    []string                   `json:"keywords"`
	Types       map[string]rawTypeSpec     `json:"types"`
	Config      rawConfigSpec              `json:"config"`
	Resources   map[string]rawResourceSpec `json:"resources"`
	Functions   map[string]rawFunctionSpec `json:"functions"`
	Provider    *rawResourceSpec           `json:"provider"`
}

type rawConfigSpec struct {
	Description string                         `json:"description"`
	Variables   map[string]rawPropertyTypeSpec `json:"variables"`
	Required    []string                       `json:"required"`
}

type rawResourceSpec struct {
	Token           string                         `json:"token"`
	Description     string                         `json:"description"`
	IsComponent     bool                           `json:"isComponent"`
	IsProvider      bool                           `json:"isProvider"`
	StateInputs     *rawObjectSpec                 `json:"stateInputs"`
	InputProperties map[string]rawPropertyTypeSpec `json:"inputProperties"`
	RequiredInputs  []string                       `json:"requiredInputs"`
	Properties      map[string]rawPropertyTypeSpec `json:"properties"`
	Required        []string                       `json:"required"`
	Methods         map[string]string              `json:"methods"`
}

type rawFunctionSpec struct {
	Description string         `json:"description"`
	Inputs      *rawObjectSpec `json:"inputs"`
	Outputs     *rawObjectSpec `json:"outputs"`
}

type rawObjectSpec struct {
	Properties map[string]rawPropertyTypeSpec `json:"properties"`
	Required   []string                       `json:"required"`
}

type rawTypeSpec struct {
	Description          string                         `json:"description"`
	Type                 string                         `json:"type"`
	Enum                 []rawEnumValueSpec             `json:"enum"`
	Properties           map[string]rawPropertyTypeSpec `json:"properties"`
	Required             []string                       `json:"required"`
	Items                *rawPropertyTypeSpec           `json:"items"`
	AdditionalProperties *rawPropertyTypeSpec           `json:"additionalProperties"`
}

type rawEnumValueSpec struct {
	Name        string `json:"name"`
	Description string `json:"description"`
	Value       any    `json:"value"`
}

type rawPropertyTypeSpec struct {
	Description          string                `json:"description"`
	Type                 string                `json:"type"`
	Ref                  string                `json:"$ref"`
	Items                *rawPropertyTypeSpec  `json:"items"`
	AdditionalProperties *rawPropertyTypeSpec  `json:"additionalProperties"`
	OneOf                []rawPropertyTypeSpec `json:"oneOf"`
	AnyOf                []rawPropertyTypeSpec `json:"anyOf"`
}

type externalTypeRefSpec struct {
	ProviderName    string
	ProviderVersion string
	RefKind         string
	Token           string
	ImportPackage   string
	ImportPath      string
	ImportAlias     string
	ClassName       string
	QualifiedType   string
}

type externalSchemaTypeInfo struct {
	Kind             string
	DartType         string
	WireType         string
	UseReferenceType bool
}

type externalSchemaIndex struct {
	TypeInfoByToken map[string]externalSchemaTypeInfo
}
