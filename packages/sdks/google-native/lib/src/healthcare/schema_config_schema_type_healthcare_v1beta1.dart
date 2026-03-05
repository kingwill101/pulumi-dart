/// Specifies the output schema type. Schema type is required.
enum SchemaConfigSchemaTypeHealthcareV1beta1 {
  schemaTypeUnspecified("SCHEMA_TYPE_UNSPECIFIED"),
  lossless("LOSSLESS"),
  analytics("ANALYTICS"),
  analyticsV2("ANALYTICS_V2");

  const SchemaConfigSchemaTypeHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static SchemaConfigSchemaTypeHealthcareV1beta1 fromValue(String value) {
    for (final item in SchemaConfigSchemaTypeHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaConfigSchemaTypeHealthcareV1beta1 value: $value');
  }
}

