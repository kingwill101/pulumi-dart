import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Additional field semantics.
enum GoogleCloudDataplexV1SchemaSchemaFieldMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  required("REQUIRED"),
  nullable("NULLABLE"),
  repeated("REPEATED");

  const GoogleCloudDataplexV1SchemaSchemaFieldMode(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDataplexV1SchemaSchemaFieldMode fromValue(String value) {
    for (final item in GoogleCloudDataplexV1SchemaSchemaFieldMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1SchemaSchemaFieldMode value: $value');
  }
}
