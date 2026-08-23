package codegen

type dartProgram struct {
	Configs                []dartProgramConfig
	RequiredPulumiVersions []string
	Locals                 []dartProgramLocal
	Resources              []dartProgramResource
	Outputs                []dartProgramOutput
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
