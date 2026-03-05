/// File format that data should be written in. Deprecated field (b/169501737) - use file_format instead.
enum GcsDestinationConfigGcsFileFormat {
  gcsFileFormatUnspecified("GCS_FILE_FORMAT_UNSPECIFIED"),
  avro("AVRO");

  const GcsDestinationConfigGcsFileFormat(this.wireValue);
  final String wireValue;

  static GcsDestinationConfigGcsFileFormat fromValue(String value) {
    for (final item in GcsDestinationConfigGcsFileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GcsDestinationConfigGcsFileFormat value: $value');
  }
}

