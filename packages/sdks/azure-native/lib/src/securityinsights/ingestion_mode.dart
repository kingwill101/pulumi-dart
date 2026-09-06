import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how to ingest the records in the file.
enum IngestionMode implements pulumi.PulumiEnum<String> {
  valueIngestOnlyIfAllAreValid("IngestOnlyIfAllAreValid"),
  valueIngestAnyValidRecords("IngestAnyValidRecords"),
  valueUnspecified("Unspecified");

  const IngestionMode(this.wireValue);
  @override
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
