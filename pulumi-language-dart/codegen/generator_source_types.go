package codegen

import "strings"

func (p *sourcePlan) reserveTypePaths() {
	for _, enumSpec := range p.spec.Enums {
		path := uniqueGeneratedFilePath(moduleClassFilePath(enumSpec.ModulePath, enumSpec.EnumName), p.usedPaths)
		addGeneratedTypeFile(p.typeFilesByName, enumSpec.EnumName, enumSpec.ModulePath, path)
	}
	for _, objectClass := range p.spec.ObjectClasses {
		path := uniqueGeneratedFilePath(moduleClassFilePath(objectClass.ModulePath, objectClass.ClassName), p.usedPaths)
		addGeneratedTypeFile(p.typeFilesByName, objectClass.ClassName, objectClass.ModulePath, path)
	}
}

func (p *sourcePlan) renderTypes() {
	for _, enumSpec := range p.spec.Enums {
		path, ok := resolveTypeFilePath(p.typeFilesByName, enumSpec.EnumName, enumSpec.ModulePath)
		if !ok {
			continue
		}
		p.typeExports = append(p.typeExports, path)
		p.files[path] = generatedEnumFile(enumSpec)
		p.symbols.addAlias("type", moduleLibraryFilePath(enumSpec.ModulePath), enumSpec.CanonicalName, enumSpec.EnumName, path)
	}
	for _, objectClass := range p.spec.ObjectClasses {
		path, ok := resolveTypeFilePath(p.typeFilesByName, objectClass.ClassName, objectClass.ModulePath)
		if !ok {
			continue
		}
		p.typeExports = append(p.typeExports, path)
		p.files[path] = generatedObjectClassFile(objectClass, path, p.typeFilesByName)
		modulePath := moduleLibraryFilePath(objectClass.ModulePath)
		p.symbols.addAlias("type", modulePath, objectClass.CanonicalName, objectClass.ClassName, path)
		if objectClass.CanonicalName != "" && !strings.HasSuffix(objectClass.CanonicalName, "Args") {
			p.symbols.addAlias("type", modulePath, canonicalTypeName(objectClass.CanonicalName, "Args"), objectClass.ClassName, path)
		}
	}
}
