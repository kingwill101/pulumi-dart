import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. Type of resource.
enum GoogleCloudDataplexV1AssetResourceSpecType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  storageBucket("STORAGE_BUCKET"),
  bigqueryDataset("BIGQUERY_DATASET");

  const GoogleCloudDataplexV1AssetResourceSpecType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDataplexV1AssetResourceSpecType fromValue(String value) {
    for (final item in GoogleCloudDataplexV1AssetResourceSpecType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1AssetResourceSpecType value: $value');
  }
}
