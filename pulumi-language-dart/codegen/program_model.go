package codegen

type dartProgram struct {
	Configs                []dartProgramConfig
	RequiredPulumiVersions []string
	Locals                 []dartProgramLocal
	Resources              []dartProgramResource
	Statements             []dartProgramStatement
	Outputs                []dartProgramOutput
}

type dartProgramStatement struct {
	Local    *dartProgramLocal
	Resource *dartProgramResource
}

type dartProgramResource struct {
	Name        string
	LogicalName string
	Type        string
	Input       string
	Package     string
	Module      string
	Class       string
	ArgsClass   string
	Inputs      []dartProgramResourceInput
}

type dartProgramResourceInput struct {
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
