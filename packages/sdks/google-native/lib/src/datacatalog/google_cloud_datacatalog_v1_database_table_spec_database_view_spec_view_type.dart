/// Type of this view.
enum GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType {
  viewTypeUnspecified("VIEW_TYPE_UNSPECIFIED"),
  standardView("STANDARD_VIEW"),
  materializedView("MATERIALIZED_VIEW");

  const GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType(this.wireValue);
  final String wireValue;

  static GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType value: $value');
  }
}

