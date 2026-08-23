/// Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the `Finding` object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.
enum GooglePrivacyDlpV2OutputStorageConfigOutputSchema {
  outputSchemaUnspecified("OUTPUT_SCHEMA_UNSPECIFIED"),
  basicColumns("BASIC_COLUMNS"),
  gcsColumns("GCS_COLUMNS"),
  datastoreColumns("DATASTORE_COLUMNS"),
  bigQueryColumns("BIG_QUERY_COLUMNS"),
  allColumns("ALL_COLUMNS");

  const GooglePrivacyDlpV2OutputStorageConfigOutputSchema(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2OutputStorageConfigOutputSchema fromValue(String value) {
    for (final item in GooglePrivacyDlpV2OutputStorageConfigOutputSchema.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2OutputStorageConfigOutputSchema value: $value');
  }
}
