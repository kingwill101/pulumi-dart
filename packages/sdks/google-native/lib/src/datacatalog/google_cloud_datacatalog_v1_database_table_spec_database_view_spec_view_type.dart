/// Type of this view.
enum GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType {
  viewTypeUnspecified("VIEW_TYPE_UNSPECIFIED"),
  standardView("STANDARD_VIEW"),
  materializedView("MATERIALIZED_VIEW");

  const GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType(this.value);
  final String value;

  static GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType value: $value');
  }
}

