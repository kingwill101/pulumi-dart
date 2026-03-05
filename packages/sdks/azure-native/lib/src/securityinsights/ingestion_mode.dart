/// Describes how to ingest the records in the file.
enum IngestionMode {
  valueIngestOnlyIfAllAreValid("IngestOnlyIfAllAreValid"),
  valueIngestAnyValidRecords("IngestAnyValidRecords"),
  valueUnspecified("Unspecified");

  const IngestionMode(this.wireValue);
  final String wireValue;

  static IngestionMode fromValue(String value) {
    for (final item in IngestionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngestionMode value: $value');
  }
}

