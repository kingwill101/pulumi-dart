package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/pcl"

func (lowerer programLowerer) declareNodeNames(nodes []pcl.Node) {
	for _, node := range nodes {
		var name string
		switch node := node.(type) {
		case *pcl.ConfigVariable:
			name = node.Name()
		case *pcl.LocalVariable:
			name = node.Name()
		case *pcl.Resource:
			name = node.Name()
		case *pcl.ReadResource:
			name = node.Name()
		case *pcl.Hook:
			name = node.Name()
		}
		if name != "" {
			lowerer.names[name] = propertyFieldName(name, lowerer.usedNames)
		}
	}
}
