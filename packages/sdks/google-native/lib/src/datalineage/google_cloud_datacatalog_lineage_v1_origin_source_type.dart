/// Type of the source. Use of a source_type other than `CUSTOM` for process creation or updating is highly discouraged, and may be restricted in the future without notice.
enum GoogleCloudDatacatalogLineageV1OriginSourceType {
  sourceTypeUnspecified("SOURCE_TYPE_UNSPECIFIED"),
  custom("CUSTOM"),
  bigquery("BIGQUERY"),
  dataFusion("DATA_FUSION"),
  composer("COMPOSER"),
  lookerStudio("LOOKER_STUDIO"),
  dataproc("DATAPROC");

  const GoogleCloudDatacatalogLineageV1OriginSourceType(this.wireValue);
  final String wireValue;

  static GoogleCloudDatacatalogLineageV1OriginSourceType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogLineageV1OriginSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogLineageV1OriginSourceType value: $value');
  }
}
