package codegen

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
	Description         string         `json:"description"`
	Inputs              *rawObjectSpec `json:"inputs"`
	Outputs             *rawObjectSpec `json:"outputs"`
	MultiArgumentInputs []string       `json:"multiArgumentInputs"`
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
