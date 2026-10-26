import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The encoding of messages validated against `schema`.
enum SchemaSettingsEncoding implements pulumi.PulumiEnum<String> {
  encodingUnspecified("ENCODING_UNSPECIFIED"),
  json("JSON"),
  binary("BINARY");

  const SchemaSettingsEncoding(this.wireValue);
  @override
  final String wireValue;

  static SchemaSettingsEncoding fromValue(String value) {
    for (final item in SchemaSettingsEncoding.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaSettingsEncoding value: $value');
  }
}
