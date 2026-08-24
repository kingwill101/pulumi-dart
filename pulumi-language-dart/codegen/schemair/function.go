package schemair

type Function struct {
	Comment             string
	HasArgs             bool
	ArgsClass           string
	ResultClass         string
	ReturnType          Type
	MultiArgumentInputs bool
	Parameters          []Property
}
