package codegen

type dartProgram struct {
	Outputs []dartProgramOutput
}

type dartProgramOutput struct {
	Name       string
	Expression string
}
