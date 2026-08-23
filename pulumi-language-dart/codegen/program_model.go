package codegen

type dartProgram struct {
	Configs []dartProgramConfig
	Locals  []dartProgramLocal
	Outputs []dartProgramOutput
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
