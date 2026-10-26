import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of this table.
enum GoogleCloudDatacatalogV1DatabaseTableSpecType implements pulumi.PulumiEnum<String> {
  tableTypeUnspecified("TABLE_TYPE_UNSPECIFIED"),
  native("NATIVE"),
  external("EXTERNAL");

  const GoogleCloudDatacatalogV1DatabaseTableSpecType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDatacatalogV1DatabaseTableSpecType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1DatabaseTableSpecType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1DatabaseTableSpecType value: $value');
  }
}
