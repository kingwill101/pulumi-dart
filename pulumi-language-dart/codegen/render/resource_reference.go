package render

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
)

func writeResourceReferenceConstructor(b *strings.Builder, declaration dartir.ResourceClass) {
	if declaration.Kind != dartir.CustomResource {
		return
	}
	metadata := resourceMetadataArguments(declaration)
	fmt.Fprintf(
		b,
		"\n  /// Creates a typed reference to an existing [%s] resource.\n"+
			"  %s.reference(String urn)\n"+
			"    : super(\n"+
			"        %s,\n"+
			"        pulumi.parseUrn(urn).urnName,\n"+
			"        const <String, pulumi.Input<dynamic>>{},\n"+
			"        pulumi.CustomResourceOptions(urn: pulumi.input(urn))%s,\n"+
			"        isResourceReference: true,\n"+
			"      )",
		declaration.Name,
		declaration.Name,
		declaration.TokenLiteral,
		metadata,
	)
	writeConstructorAssignments(b, declaration.ConstructorAssignments)
}
