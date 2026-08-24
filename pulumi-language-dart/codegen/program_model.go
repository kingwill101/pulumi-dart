package codegen

type dartProgram struct {
	Imports                  []dartProgramImport
	Configs                  []dartProgramConfig
	Locals                   []dartProgramLocal
	Resources                []dartProgramResource
	Statements               []dartProgramStatement
	Outputs                  []dartProgramOutput
	NeedsAsyncInitialization bool
	ResourceReferences       []dartProgramResourceReference
	Components               []dartProgramComponent
}

type dartProgramResourceReference struct {
	Token     string
	Package   string
	Module    string
	ClassName string
}

type dartProgramImport struct {
	Package string
	Module  string
}

type dartProgramStatement struct {
	Config                *dartProgramConfig
	Local                 *dartProgramLocal
	Hook                  *dartProgramHook
	Resource              *dartProgramResource
	Component             *dartProgramComponentInstance
	DeferredOutput        *dartProgramDeferredOutput
	DeferredResolution    *dartProgramDeferredResolution
	RequiredPulumiVersion string
}

type dartProgramComponent struct {
	Name    string
	Args    []dartProgramComponentArg
	Program dartProgram
}

type dartProgramComponentArg struct {
	Name, WireName, DartType, Default string
	Required                          bool
}

type dartProgramComponentInstance struct {
	Name, LogicalName, Class string
	PrefixLogicalName        bool
	OmitRegistrationInputs   bool
	Inputs                   []dartProgramResourceInput
	Options                  []dartProgramResourceOption
	Range                    *dartProgramResourceRange
}

type dartProgramHook struct {
	Name         string
	LogicalName  string
	Kind         string
	Command      []string
	OnDryRun     string
	IgnoreErrors string
}

type dartProgramResource struct {
	Name              string
	LogicalName       string
	PrefixLogicalName bool
	Type              string
	Input             string
	ID                string
	Package           string
	Module            string
	Class             string
	ArgsClass         string
	StateClass        string
	Inputs            []dartProgramResourceInput
	OptionsClass      string
	Options           []dartProgramResourceOption
	Range             *dartProgramResourceRange
}

type dartProgramResourceRange struct {
	Expression string
	Kind       string
	IsOutput   bool
}

type dartProgramResourceInput struct {
	Name       string
	Expression string
}

type dartProgramResourceOption struct {
	Name       string
	Expression string
}

type dartProgramConfig struct {
	Name       string
	Expression string
}

type dartProgramLocal struct {
	Name       string
	Expression string
}

type dartProgramOutput struct {
	Name       string
	Expression string
}
