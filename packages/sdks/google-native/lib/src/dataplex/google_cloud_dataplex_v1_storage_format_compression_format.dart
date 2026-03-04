/// Optional. The compression type associated with the stored data. If unspecified, the data is uncompressed.
enum GoogleCloudDataplexV1StorageFormatCompressionFormat {
  compressionFormatUnspecified("COMPRESSION_FORMAT_UNSPECIFIED"),
  gzip("GZIP"),
  bzip2("BZIP2");

  const GoogleCloudDataplexV1StorageFormatCompressionFormat(this.wireValue);
  final String wireValue;

  static GoogleCloudDataplexV1StorageFormatCompressionFormat fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudDataplexV1StorageFormatCompressionFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDataplexV1StorageFormatCompressionFormat value: $value',
    );
  }
}
