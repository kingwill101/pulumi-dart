package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func lowerBoundResources(
	spec *packageSchema,
	pkg *schema.Package,
	usedClassNamesByModule map[string]map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	resourceTokens []string,
	resourceByToken map[string]*schema.Resource,
) {
	for _, token := range resourceTokens {
		resource := resourceByToken[token]
		resourceBaseName := resourceTypeBaseNameFromToken(resource.Token)
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
			IsProvider:  isProviderResourceToken(resource.Token) || resource.IsProvider,
			Comment:     strings.TrimSpace(resource.Comment),
		}
		if classSpec := makeObjectClassSpec(
			resourceBaseName,
			tokenModulePath(resource.Token),
			fmt.Sprintf("The set of arguments for %s.", resourceBaseName),
			resource.InputProperties,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"Args",
			"ResourceArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}

		if stateClass := makeObjectClassSpec(
			resourceBaseName,
			tokenModulePath(resource.Token),
			fmt.Sprintf("Input properties used for looking up and filtering %s resources.", resourceBaseName),
			schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(resource.StateInputs)),
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"State",
			"ResourceState",
		); stateClass != nil {
			stateClass.CanonicalName = canonicalTypeName(resourceBaseName, "State")
			spec.ObjectClasses = append(spec.ObjectClasses, *stateClass)
			resourceSpec.StateClass = stateClass.ClassName
		}

		methods := append([]*schema.Method{}, resource.Methods...)
		sort.Slice(methods, func(i, j int) bool {
			left := strings.TrimSpace(methods[i].Name)
			right := strings.TrimSpace(methods[j].Name)
			if left == right {
				leftToken := ""
				rightToken := ""
				if methods[i].Function != nil {
					leftToken = methods[i].Function.Token
				}
				if methods[j].Function != nil {
					rightToken = methods[j].Function.Token
				}
				return leftToken < rightToken
			}
			return left < right
		})
		methodSpecs := make([]packageResourceMethodSpec, 0, len(methods))
		for _, method := range methods {
			if method == nil {
				continue
			}

			methodSpec := packageResourceMethodSpec{
				Name: strings.TrimSpace(method.Name),
			}
			if method.Function != nil {
				methodSpec.Token = strings.TrimSpace(method.Function.Token)
				methodSpec.Comment = strings.TrimSpace(method.Function.Comment)
			}
			if methodSpec.Name == "" {
				methodSpec.Name = tokenElementName(methodSpec.Token)
			}
			if methodSpec.Name == "" {
				methodSpec.Name = "invoke"
			}

			methodBaseName := resourceBaseName + toDartClassName(methodSpec.Name)
			if method.Function != nil {
				inputProperties := schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(method.Function.Inputs))
				if classSpec := makeObjectClassSpec(
					methodBaseName,
					tokenModulePath(resource.Token),
					fmt.Sprintf("Arguments for %s.%s.", resourceBaseName, methodSpec.Name),
					inputProperties,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
					namedTypeRefs,
					true,
					true,
					pkg.Name,
					"Args",
					"MethodArgs",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(methodSpec.Name), "Args")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					methodSpec.ArgsClass = classSpec.ClassName
				}

				resultProperties := schemaObjectPropertiesFromRef(method.Function.Outputs)
				if len(resultProperties) == 0 {
					if objectReturn, ok := method.Function.ReturnType.(*schema.ObjectType); ok {
						resultProperties = schemaObjectPropertiesFromRef(objectReturn)
					}
				}
				if classSpec := makeObjectClassSpec(
					methodBaseName,
					tokenModulePath(resource.Token),
					fmt.Sprintf("Result data returned by %s.%s.", resourceBaseName, methodSpec.Name),
					resultProperties,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
					namedTypeRefs,
					true,
					false,
					pkg.Name,
					"Result",
					"MethodResult",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(methodSpec.Name), "Result")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					methodSpec.ResultClass = classSpec.ClassName
				}

				methodSpec.HasReturn = method.Function.Outputs != nil || method.Function.ReturnType != nil
			}

			methodSpecs = append(methodSpecs, methodSpec)
		}
		resourceSpec.Methods = methodSpecs
		resourceSpec.OutputProperties = makeResourceOutputPropertySpecs(resource, namedTypeRefs, pkg.Name)
		spec.Resources[resource.Token] = resourceSpec
	}
}
