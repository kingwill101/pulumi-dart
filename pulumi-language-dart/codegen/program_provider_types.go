package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/schema"

func (lowerer programLowerer) providerSchemaValueDartType(defaultPackage string, typ schema.Type) string {
	typ = unwrapProviderInputType(typ)
	if primitive, ok := providerPrimitiveDartType(typ); ok {
		return primitive
	}
	switch typ := typ.(type) {
	case *schema.EnumType:
		pkg, module, className := providerEnumName(defaultPackage, typ)
		lowerer.imports[pkg+"\x00"+module] = dartProgramImport{Package: pkg, Module: module}
		return programModuleAlias(pkg, module) + "." + className
	case *schema.ObjectType:
		pkg, module, className := providerObjectTypeName(defaultPackage, typ)
		lowerer.imports[pkg+"\x00"+module] = dartProgramImport{Package: pkg, Module: module}
		return programModuleAlias(pkg, module) + "." + className
	case *schema.ResourceType:
		resource := typ.Resource
		if resource == nil {
			resource = lowerer.resourceTypes[typ.Token]
		}
		if resource == nil {
			return "pulumi.CustomResource"
		}
		pkg := tokenProviderName(typ.Token)
		if pkg == "" {
			pkg = defaultPackage
		}
		pkg = dartPackageNameForReference(pkg, resource.PackageReference)
		module, className, _ := programProviderResourceName(resource)
		lowerer.imports[pkg+"\x00"+module] = dartProgramImport{Package: pkg, Module: module}
		return programModuleAlias(pkg, module) + "." + className
	case *schema.ArrayType:
		return "List<" + lowerer.providerSchemaValueDartType(defaultPackage, typ.ElementType) + ">"
	case *schema.MapType:
		return "Map<String, " + lowerer.providerSchemaValueDartType(defaultPackage, typ.ElementType) + ">"
	default:
		return "dynamic"
	}
}
