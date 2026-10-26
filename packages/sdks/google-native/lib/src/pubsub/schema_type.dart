import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the schema definition.
enum SchemaType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  protocolBuffer("PROTOCOL_BUFFER"),
  avro("AVRO");

  const SchemaType(this.wireValue);
  @override
  final String wireValue;

  static SchemaType fromValue(String value) {
    for (final item in SchemaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaType value: $value');
  }
}
