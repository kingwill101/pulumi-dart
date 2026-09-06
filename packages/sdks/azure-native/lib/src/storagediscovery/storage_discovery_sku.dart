import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage discovery sku
enum StorageDiscoverySku implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  free("Free");

  const StorageDiscoverySku(this.wireValue);
  @override
  final String wireValue;

  static StorageDiscoverySku fromValue(String value) {
    for (final item in StorageDiscoverySku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageDiscoverySku value: $value');
  }
}
