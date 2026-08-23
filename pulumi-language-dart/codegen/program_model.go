package codegen

type dartProgram struct {
	Imports    []dartProgramImport
	Configs    []dartProgramConfig
	Locals     []dartProgramLocal
	Resources  []dartProgramResource
	Statements []dartProgramStatement
	Outputs    []dartProgramOutput
}

type dartProgramImport struct {
	Package string
	Module  string
}

type dartProgramStatement struct {
	Config                *dartProgramConfig
	Local                 *dartProgramLocal
	Resource              *dartProgramResource
	RequiredPulumiVersion string
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
