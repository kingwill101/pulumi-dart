package codegen

import (
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/stretchr/testify/assert"
)

func TestComponentCollectionConversionsRewriteElements(t *testing.T) {
	t.Parallel()

	assert.Equal(t,
		"(value as List).map<double>((item) => item is String ? double.parse(item) : (item as num).toDouble()).toList()",
		componentListValueConversion(model.NumberType, "double"),
	)
	assert.Equal(t,
		"Map<String, bool>.fromEntries((value as Map).entries.map((entry) => MapEntry(entry.key.toString(), entry.value is String ? bool.parse(entry.value) : entry.value as bool)))",
		componentMapValueConversion(model.BoolType, "bool"),
	)
}
