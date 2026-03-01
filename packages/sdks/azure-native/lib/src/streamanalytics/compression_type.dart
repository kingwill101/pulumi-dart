/// Indicates the type of compression that the input uses. Required on PUT (CreateOrReplace) requests.
enum CompressionType {
  valueNone("None"),
  valueGZip("GZip"),
  valueDeflate("Deflate");

  const CompressionType(this.value);
  final String value;

  static CompressionType fromValue(String value) {
    for (final item in CompressionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompressionType value: $value');
  }
}

