/// Indicates the type of compression that the input uses. Required on PUT (CreateOrReplace) requests.
enum CompressionType {
  valueNone("None"),
  valueGZip("GZip"),
  valueDeflate("Deflate");

  const CompressionType(this.wireValue);
  final String wireValue;

  static CompressionType fromValue(String value) {
    for (final item in CompressionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompressionType value: $value');
  }
}
