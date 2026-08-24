package codegen

import (
	"sort"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func findObjectClassByName(spec *packageSchema, className string) *packageObjectClassSpec {
	for i := range spec.ObjectClasses {
		if spec.ObjectClasses[i].ClassName == className {
			return &spec.ObjectClasses[i]
		}
	}
	return nil
}

func propertyNames(properties []packagePropertySpec) []string {
	names := make([]string, 0, len(properties))
	for _, property := range properties {
		names = append(names, property.Name)
	}
	sort.Strings(names)
	return names
}

func methodByName(methods []packageResourceMethodSpec, name string) *packageResourceMethodSpec {
	for i := range methods {
		if methods[i].Name == name {
			return &methods[i]
		}
	}
	return nil
}

func TestParsePackageSchemaParsesResourceStateAndMethods(t *testing.T) {
	t.Parallel()

	raw := `{
		"name": "sample",
		"resources": {
			"sample:index:Widget": {
				"description": "A widget resource.",
				"inputProperties": {
					"name": {"type":"string"}
				},
				"requiredInputs": ["name"],
				"stateInputs": {
					"properties": {
						"__self__": {"type":"string"},
						"name": {"type":"string"}
					},
					"required": []
				},
				"methods": {
					"getDetails": "sample:index:Widget/getDetails",
					"refresh": "sample:index:Widget/refresh"
				}
			}
		},
		"functions": {
			"sample:index:Widget/getDetails": {
				"description": "Gets detail data.",
				"inputs": {
					"properties": {
						"__self__": {"type":"string"},
						"verbose": {"type":"boolean"}
					},
					"required": []
				},
				"outputs": {
					"properties": {
						"value": {"type":"string"}
					},
					"required": []
				}
			},
			"sample:index:Widget/refresh": {
				"description": "Refreshes the widget.",
				"inputs": {
					"properties": {
						"__self__": {"type":"string"}
					},
					"required": []
				}
			}
		}
	}`

	spec, err := parsePackageSchema(raw, nil)
	require.NoError(t, err)

	resourceSpec, ok := spec.Resources["sample:index:Widget"]
	require.True(t, ok)
	require.NotEmpty(t, resourceSpec.StateClass)
	require.Len(t, resourceSpec.Methods, 2)

	stateClass := findObjectClassByName(spec, resourceSpec.StateClass)
	require.NotNil(t, stateClass)
	assert.Equal(t, []string{"name"}, propertyNames(stateClass.Properties))

	getDetails := methodByName(resourceSpec.Methods, "getDetails")
	require.NotNil(t, getDetails)
	assert.Equal(t, "sample:index:Widget/getDetails", getDetails.Token)
	assert.NotEmpty(t, getDetails.ArgsClass)
	assert.NotEmpty(t, getDetails.ResultClass)
	assert.True(t, getDetails.HasReturn)

	argsClass := findObjectClassByName(spec, getDetails.ArgsClass)
	require.NotNil(t, argsClass)
	assert.Equal(t, []string{"verbose"}, propertyNames(argsClass.Properties))

	refresh := methodByName(resourceSpec.Methods, "refresh")
	require.NotNil(t, refresh)
	assert.Equal(t, "sample:index:Widget/refresh", refresh.Token)
	assert.Empty(t, refresh.ArgsClass)
	assert.Empty(t, refresh.ResultClass)
	assert.False(t, refresh.HasReturn)
}

func TestPackageSchemaFromPackageParsesResourceStateAndMethods(t *testing.T) {
	t.Parallel()

	resourceToken := "sample:index:Widget"
	methodToken := "sample:index:Widget/getDetails"
	voidMethodToken := "sample:index:Widget/refresh"

	methodInputShape := &schema.ObjectType{
		Properties: []*schema.Property{
			{
				Name: "__self__",
				Type: &schema.ResourceType{Token: resourceToken},
			},
			{
				Name: "verbose",
				Type: &schema.OptionalType{ElementType: schema.BoolType},
			},
		},
	}
	methodInputs := &schema.ObjectType{InputShape: methodInputShape}
	methodResultType := &schema.ObjectType{
		Properties: []*schema.Property{
			{
				Name: "value",
				Type: schema.StringType,
			},
		},
	}
	voidMethodInputs := &schema.ObjectType{
		InputShape: &schema.ObjectType{
			Properties: []*schema.Property{
				{
					Name: "__self__",
					Type: &schema.ResourceType{Token: resourceToken},
				},
			},
		},
	}

	resource := &schema.Resource{
		Token: resourceToken,
		StateInputs: &schema.ObjectType{
			InputShape: &schema.ObjectType{
				Properties: []*schema.Property{
					{
						Name: "__self__",
						Type: &schema.ResourceType{Token: resourceToken},
					},
					{
						Name: "name",
						Type: &schema.OptionalType{ElementType: schema.StringType},
					},
				},
			},
		},
		Methods: []*schema.Method{
			{
				Name: "getDetails",
				Function: &schema.Function{
					Token:      methodToken,
					Comment:    "Gets details for this widget.",
					Inputs:     methodInputs,
					ReturnType: methodResultType,
				},
			},
			{
				Name: "refresh",
				Function: &schema.Function{
					Token:   voidMethodToken,
					Comment: "Refreshes this widget.",
					Inputs:  voidMethodInputs,
				},
			},
		},
	}

	spec := packageSchemaFromPackage(&schema.Package{
		Name:      "sample",
		Resources: []*schema.Resource{resource},
	})

	resourceSpec, ok := spec.Resources[resourceToken]
	require.True(t, ok)
	require.NotEmpty(t, resourceSpec.StateClass)
	require.Len(t, resourceSpec.Methods, 2)

	stateClass := findObjectClassByName(spec, resourceSpec.StateClass)
	require.NotNil(t, stateClass)
	assert.Equal(t, []string{"name"}, propertyNames(stateClass.Properties))

	getDetails := methodByName(resourceSpec.Methods, "getDetails")
	require.NotNil(t, getDetails)
	assert.Equal(t, methodToken, getDetails.Token)
	assert.NotEmpty(t, getDetails.ArgsClass)
	assert.NotEmpty(t, getDetails.ResultClass)
	assert.True(t, getDetails.HasReturn)

	argsClass := findObjectClassByName(spec, getDetails.ArgsClass)
	require.NotNil(t, argsClass)
	assert.Equal(t, []string{"verbose"}, propertyNames(argsClass.Properties))

	refresh := methodByName(resourceSpec.Methods, "refresh")
	require.NotNil(t, refresh)
	assert.Equal(t, voidMethodToken, refresh.Token)
	assert.Empty(t, refresh.ArgsClass)
	assert.Empty(t, refresh.ResultClass)
	assert.False(t, refresh.HasReturn)
}

func TestGeneratedResourceFileEmitsGetAndMethodWrappers(t *testing.T) {
	t.Parallel()

	token := "sample:index:Widget"
	className := "Widget"
	filePath := "index/widget.dart"
	typeFilesByName := map[string][]generatedTypeFile{
		"WidgetArgs": {
			{
				ClassName:  "WidgetArgs",
				ModulePath: "index",
				FilePath:   "index/widget_args.dart",
			},
		},
		"WidgetState": {
			{
				ClassName:  "WidgetState",
				ModulePath: "index",
				FilePath:   "index/widget_state.dart",
			},
		},
		"WidgetGetDetailsArgs": {
			{
				ClassName:  "WidgetGetDetailsArgs",
				ModulePath: "index",
				FilePath:   "index/widget_get_details_args.dart",
			},
		},
		"WidgetGetDetailsResult": {
			{
				ClassName:  "WidgetGetDetailsResult",
				ModulePath: "index",
				FilePath:   "index/widget_get_details_result.dart",
			},
		},
	}

	resource := packageResourceSpec{
		ArgsClass:  "WidgetArgs",
		StateClass: "WidgetState",
		Methods: []packageResourceMethodSpec{
			{
				Name:        "getDetails",
				Token:       "sample:index:Widget/getDetails",
				Comment:     "Gets details for this widget.",
				ArgsClass:   "WidgetGetDetailsArgs",
				ResultClass: "WidgetGetDetailsResult",
				HasReturn:   true,
			},
			{
				Name:      "refresh",
				Token:     "sample:index:Widget/refresh",
				Comment:   "Refreshes this widget.",
				HasReturn: false,
			},
		},
	}

	content := string(generatedResourceFile(
		token,
		resource,
		className,
		filePath,
		true,
		typeFilesByName,
		"internal/package_registration.dart",
		"",
		"",
	))

	assert.Contains(t, content, "import 'widget_args.dart';")
	assert.Contains(t, content, "import 'widget_state.dart';")
	assert.Contains(t, content, "import 'widget_get_details_args.dart';")
	assert.Contains(t, content, "import 'widget_get_details_result.dart';")
	assert.Contains(t, content, "class Widget extends pulumi.CustomResource {")
	assert.Contains(t, content, "static Widget get(")
	assert.Contains(t, content, "Widget._get(")
	assert.Contains(t, content, "Future<WidgetGetDetailsResult> getDetails(")
	assert.Contains(t, content, "deployment.callWithResult<Map<String, dynamic>>(")
	assert.Contains(t, content, "Future<void> refresh() async")
	assert.Contains(t, content, "await deployment.call(")
	assert.Contains(t, content, "registerPackageRequest: package_registration.registerPackageRequest")
	assert.Contains(
		t,
		content,
		"options ?? pulumi.CustomResourceOptions(),\n          registerPackageRequest: package_registration.registerPackageRequest,\n        );\n\n  /// Gets details for this widget.",
	)
	assert.Contains(
		t,
		content,
		"  }\n\n  /// Gets an existing [Widget] resource's state with the given [name] and [id].",
	)
}
