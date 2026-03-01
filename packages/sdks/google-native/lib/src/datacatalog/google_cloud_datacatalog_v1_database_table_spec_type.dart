/// Type of this table.
enum GoogleCloudDatacatalogV1DatabaseTableSpecType {
  tableTypeUnspecified("TABLE_TYPE_UNSPECIFIED"),
  native("NATIVE"),
  external("EXTERNAL");

  const GoogleCloudDatacatalogV1DatabaseTableSpecType(this.value);
  final String value;

  static GoogleCloudDatacatalogV1DatabaseTableSpecType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1DatabaseTableSpecType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1DatabaseTableSpecType value: $value');
  }
}

