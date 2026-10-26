import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the output schema type. Schema type is required.
enum SchemaConfigSchemaType implements pulumi.PulumiEnum<String> {
  schemaTypeUnspecified("SCHEMA_TYPE_UNSPECIFIED"),
  analytics("ANALYTICS"),
  analyticsV2("ANALYTICS_V2");

  const SchemaConfigSchemaType(this.wireValue);
  @override
  final String wireValue;

  static SchemaConfigSchemaType fromValue(String value) {
    for (final item in SchemaConfigSchemaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaConfigSchemaType value: $value');
  }
}
