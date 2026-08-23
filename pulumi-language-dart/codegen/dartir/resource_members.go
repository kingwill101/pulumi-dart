package dartir

type ResourceMembers struct {
	Methods []ResourceMethod
	Get     *ResourceGet
}

type ResourceMethod struct {
	Name                   string
	Docs                   string
	ArgsDocsMacro          string
	ArgsClass              string
	ResultClass            string
	HasReturn              bool
	TokenLiteral           string
	HasPackageRegistration bool
}

type ResourceGet struct {
	ClassName         string
	StateClass        string
	TokenLiteral      string
	OutputAssignments []Assignment
}

type Assignment struct {
	Target     string
	Expression string
}
