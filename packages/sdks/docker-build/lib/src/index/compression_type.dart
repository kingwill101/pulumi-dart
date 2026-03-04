enum CompressionType {
  valueGzip("gzip"),
  valueEstargz("estargz"),
  valueZstd("zstd");

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
