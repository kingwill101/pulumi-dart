package codegen

func GeneratedProgramStub(pclSource map[string]string) []byte { return generatedProgramStub(pclSource) }
func SanitizeDartIdentifier(value string) string              { return sanitizeDartIdentifier(value) }
func ToDartPackageName(namespace, name string) string         { return toDartPackageName(namespace, name) }
