import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the MetadataSchema. This is a property that identifies which metadata types will use the MetadataSchema.
enum MetadataSchemaSchemaTypeAiplatformV1beta1 implements pulumi.PulumiEnum<String> {
  metadataSchemaTypeUnspecified("METADATA_SCHEMA_TYPE_UNSPECIFIED"),
  artifactType("ARTIFACT_TYPE"),
  executionType("EXECUTION_TYPE"),
  contextType("CONTEXT_TYPE");

  const MetadataSchemaSchemaTypeAiplatformV1beta1(this.wireValue);
  @override
  final String wireValue;

  static MetadataSchemaSchemaTypeAiplatformV1beta1 fromValue(String value) {
    for (final item in MetadataSchemaSchemaTypeAiplatformV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataSchemaSchemaTypeAiplatformV1beta1 value: $value');
  }
}
