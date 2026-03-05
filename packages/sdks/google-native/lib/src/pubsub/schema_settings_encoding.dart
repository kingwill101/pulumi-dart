/// Optional. The encoding of messages validated against `schema`.
enum SchemaSettingsEncoding {
  encodingUnspecified("ENCODING_UNSPECIFIED"),
  json("JSON"),
  binary("BINARY");

  const SchemaSettingsEncoding(this.wireValue);
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

