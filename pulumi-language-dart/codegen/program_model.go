package codegen

type dartProgram struct {
	Locals  []dartProgramLocal
	Outputs []dartProgramOutput
}

type dartProgramLocal struct {
	Name       string
	Expression string
}

type dartProgramOutput struct {
	Name       string
	Expression string
}
