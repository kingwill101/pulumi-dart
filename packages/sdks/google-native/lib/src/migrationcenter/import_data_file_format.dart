import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The payload format.
enum ImportDataFileFormat implements pulumi.PulumiEnum<String> {
  importJobFormatUnspecified("IMPORT_JOB_FORMAT_UNSPECIFIED"),
  importJobFormatRvtoolsXlsx("IMPORT_JOB_FORMAT_RVTOOLS_XLSX"),
  importJobFormatRvtoolsCsv("IMPORT_JOB_FORMAT_RVTOOLS_CSV"),
  importJobFormatExportedAwsCsv("IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV"),
  importJobFormatExportedAzureCsv("IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV"),
  importJobFormatStratozoneCsv("IMPORT_JOB_FORMAT_STRATOZONE_CSV");

  const ImportDataFileFormat(this.wireValue);
  @override
  final String wireValue;

  static ImportDataFileFormat fromValue(String value) {
    for (final item in ImportDataFileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportDataFileFormat value: $value');
  }
}
