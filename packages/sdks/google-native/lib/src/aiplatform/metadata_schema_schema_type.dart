/// The type of the MetadataSchema. This is a property that identifies which metadata types will use the MetadataSchema.
enum MetadataSchemaSchemaType {
  metadataSchemaTypeUnspecified("METADATA_SCHEMA_TYPE_UNSPECIFIED"),
  artifactType("ARTIFACT_TYPE"),
  executionType("EXECUTION_TYPE"),
  contextType("CONTEXT_TYPE");

  const MetadataSchemaSchemaType(this.wireValue);
  final String wireValue;

  static MetadataSchemaSchemaType fromValue(String value) {
    for (final item in MetadataSchemaSchemaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataSchemaSchemaType value: $value');
  }
}

