/// Describes how to ingest the records in the file.
enum IngestionMode {
  valueIngestOnlyIfAllAreValid("IngestOnlyIfAllAreValid"),
  valueIngestAnyValidRecords("IngestAnyValidRecords"),
  valueUnspecified("Unspecified");

  const IngestionMode(this.value);
  final String value;

  static IngestionMode fromValue(String value) {
    for (final item in IngestionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngestionMode value: $value');
  }
}

