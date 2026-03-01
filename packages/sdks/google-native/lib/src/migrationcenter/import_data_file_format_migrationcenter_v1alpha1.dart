/// Required. The payload format.
enum ImportDataFileFormatMigrationcenterV1alpha1 {
  importJobFormatUnspecified("IMPORT_JOB_FORMAT_UNSPECIFIED"),
  importJobFormatCmdb("IMPORT_JOB_FORMAT_CMDB"),
  importJobFormatRvtoolsXlsx("IMPORT_JOB_FORMAT_RVTOOLS_XLSX"),
  importJobFormatRvtoolsCsv("IMPORT_JOB_FORMAT_RVTOOLS_CSV"),
  importJobFormatExportedAwsCsv("IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV"),
  importJobFormatExportedAzureCsv("IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV"),
  importJobFormatManualCsv("IMPORT_JOB_FORMAT_MANUAL_CSV");

  const ImportDataFileFormatMigrationcenterV1alpha1(this.value);
  final String value;

  static ImportDataFileFormatMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in ImportDataFileFormatMigrationcenterV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportDataFileFormatMigrationcenterV1alpha1 value: $value');
  }
}

