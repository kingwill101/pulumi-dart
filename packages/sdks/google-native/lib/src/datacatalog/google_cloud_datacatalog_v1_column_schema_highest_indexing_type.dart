import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Most important inclusion of this column.
enum GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType implements pulumi.PulumiEnum<String> {
  indexingTypeUnspecified("INDEXING_TYPE_UNSPECIFIED"),
  indexingTypeNone("INDEXING_TYPE_NONE"),
  indexingTypeNonUnique("INDEXING_TYPE_NON_UNIQUE"),
  indexingTypeUnique("INDEXING_TYPE_UNIQUE"),
  indexingTypePrimaryKey("INDEXING_TYPE_PRIMARY_KEY");

  const GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1ColumnSchemaHighestIndexingType value: $value');
  }
}
