import 'package:pulumi/pulumi.dart' as pulumi;

/// Looker specific column type of this column.
enum GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType implements pulumi.PulumiEnum<String> {
  lookerColumnTypeUnspecified("LOOKER_COLUMN_TYPE_UNSPECIFIED"),
  dimension("DIMENSION"),
  dimensionGroup("DIMENSION_GROUP"),
  filter("FILTER"),
  measure("MEASURE"),
  parameter("PARAMETER");

  const GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType value: $value');
  }
}
