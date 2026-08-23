package codegen

import "fmt"

func renderDartDeferredStatement(statement dartProgramStatement) string {
	if statement.DeferredOutput != nil {
		return fmt.Sprintf("    final (%s, %sResolve) = pulumi.deferredOutput<%s>();\n", statement.DeferredOutput.Name, statement.DeferredOutput.Name, statement.DeferredOutput.DartType)
	}
	if statement.DeferredResolution != nil {
		return fmt.Sprintf("    %sResolve(pulumi.Input.asInput<%s>(%s).toOutput());\n", statement.DeferredResolution.Name, statement.DeferredResolution.DartType, statement.DeferredResolution.Expression)
	}
	return ""
}
