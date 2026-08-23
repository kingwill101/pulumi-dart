// Package dartir defines the Dart declarations emitted by provider codegen.
package dartir

type Enum struct {
	Name           string
	Docs           string
	UnderlyingType string
	Values         []EnumValue
}

type EnumValue struct {
	Name    string
	Docs    string
	Literal string
}
