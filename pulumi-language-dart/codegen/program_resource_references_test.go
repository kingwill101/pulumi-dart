package codegen

import (
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestRegisterResourceReferencesNestedInOutputCollections(t *testing.T) {
	t.Parallel()

	aws := (&schema.Package{Name: "aws"}).Reference()
	subnet := &schema.Resource{
		Token:            "aws:ec2/subnet:Subnet",
		PackageReference: aws,
	}
	subnetType := &schema.ResourceType{Token: subnet.Token, Resource: subnet}
	nested := &schema.ObjectType{Properties: []*schema.Property{{
		Name: "subnets",
		Type: &schema.OptionalType{ElementType: &schema.ArrayType{ElementType: &schema.MapType{
			ElementType: subnetType,
		}}},
	}}}
	component := &schema.Resource{Properties: []*schema.Property{{Name: "network", Type: nested}}}
	lowerer := programLowerer{
		imports:            map[string]dartProgramImport{},
		resourceTypes:      map[string]*schema.Resource{},
		resourceReferences: map[string]dartProgramResourceReference{},
	}

	require.NoError(t, lowerer.registerResourceOutputReferences(component))
	assert.Equal(t, dartProgramResourceReference{
		Token: subnet.Token, Package: "pulumi_aws", Module: "ec2", ClassName: "Subnet",
	}, lowerer.resourceReferences[subnet.Token])
	assert.Contains(t, lowerer.imports, "pulumi_aws\x00ec2")
}
