/// Required. The payload format.
enum ImportDataFileFormat {
  importJobFormatUnspecified("IMPORT_JOB_FORMAT_UNSPECIFIED"),
  importJobFormatRvtoolsXlsx("IMPORT_JOB_FORMAT_RVTOOLS_XLSX"),
  importJobFormatRvtoolsCsv("IMPORT_JOB_FORMAT_RVTOOLS_CSV"),
  importJobFormatExportedAwsCsv("IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV"),
  importJobFormatExportedAzureCsv("IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV"),
  importJobFormatStratozoneCsv("IMPORT_JOB_FORMAT_STRATOZONE_CSV");

  const ImportDataFileFormat(this.wireValue);
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
