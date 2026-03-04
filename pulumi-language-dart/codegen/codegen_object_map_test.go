package codegen

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestRegisterOutputAssignmentTarget(t *testing.T) {
	t.Parallel()

	assert.Equal(t, "this.name", registerOutputAssignmentTarget("name", "name", "args", "options"))
	assert.Equal(t, "this.options", registerOutputAssignmentTarget("options", "name", "args", "options"))
	assert.Equal(t, "state", registerOutputAssignmentTarget("state", "name", "args", "options"))
	assert.Equal(t, "this.state", registerOutputAssignmentTarget("state", "name", "state", "options"))
	assert.Equal(t, "this.args", registerOutputAssignmentTarget("args", "name", "args", "options"))
	assert.Equal(t, "driver", registerOutputAssignmentTarget("driver", "name", "args", "options"))
}

func TestConfigTypeRequiresJSONDecode(t *testing.T) {
	t.Parallel()

	assert.True(t, configTypeRequiresJSONDecode(packageTypeSpec{Kind: "array"}))
	assert.True(t, configTypeRequiresJSONDecode(packageTypeSpec{Kind: "map"}))
	assert.True(t, configTypeRequiresJSONDecode(packageTypeSpec{Kind: "object"}))
	assert.False(t, configTypeRequiresJSONDecode(packageTypeSpec{Kind: "string"}))
}
