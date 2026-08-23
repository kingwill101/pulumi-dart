package codegen

import "fmt"

func propertyFieldName(name string, used map[string]int) string {
	candidate := lowerCamelIdentifier(toDartClassName(name))
	if candidate == "" {
		candidate = "value"
	}
	if _, reserved := dartReservedIdentifiers[candidate]; reserved {
		candidate += "_"
	}
	if _, disallowed := dartDisallowedFieldNames[candidate]; disallowed {
		candidate += "_"
	}
	count := used[candidate]
	used[candidate] = count + 1
	if count == 0 {
		return candidate
	}
	return fmt.Sprintf("%s%d", candidate, count+1)
}
