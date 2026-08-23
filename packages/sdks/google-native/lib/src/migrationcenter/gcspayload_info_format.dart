/// The import job format.
enum GCSPayloadInfoFormat {
  importJobFormatUnspecified("IMPORT_JOB_FORMAT_UNSPECIFIED"),
  importJobFormatCmdb("IMPORT_JOB_FORMAT_CMDB"),
  importJobFormatRvtoolsXlsx("IMPORT_JOB_FORMAT_RVTOOLS_XLSX"),
  importJobFormatRvtoolsCsv("IMPORT_JOB_FORMAT_RVTOOLS_CSV"),
  importJobFormatExportedAwsCsv("IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV"),
  importJobFormatExportedAzureCsv("IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV"),
  importJobFormatManualCsv("IMPORT_JOB_FORMAT_MANUAL_CSV");

  const GCSPayloadInfoFormat(this.wireValue);
  final String wireValue;

  static GCSPayloadInfoFormat fromValue(String value) {
    for (final item in GCSPayloadInfoFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GCSPayloadInfoFormat value: $value');
  }
}
