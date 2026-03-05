/// Compression of the loaded JSON file.
enum JsonFileFormatCompression {
  jsonCompressionUnspecified("JSON_COMPRESSION_UNSPECIFIED"),
  noCompression("NO_COMPRESSION"),
  gzip("GZIP");

  const JsonFileFormatCompression(this.wireValue);
  final String wireValue;

  static JsonFileFormatCompression fromValue(String value) {
    for (final item in JsonFileFormatCompression.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonFileFormatCompression value: $value');
  }
}

