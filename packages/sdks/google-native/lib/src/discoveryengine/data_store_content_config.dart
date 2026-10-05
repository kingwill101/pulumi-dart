import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
enum DataStoreContentConfig implements pulumi.PulumiEnum<String> {
  contentConfigUnspecified("CONTENT_CONFIG_UNSPECIFIED"),
  noContent("NO_CONTENT"),
  contentRequired("CONTENT_REQUIRED"),
  publicWebsite("PUBLIC_WEBSITE");

  const DataStoreContentConfig(this.wireValue);
  @override
  final String wireValue;

  static DataStoreContentConfig fromValue(String value) {
    for (final item in DataStoreContentConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStoreContentConfig value: $value');
  }
}
