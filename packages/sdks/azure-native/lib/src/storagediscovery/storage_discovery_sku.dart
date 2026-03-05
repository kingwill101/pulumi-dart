/// The storage discovery sku
enum StorageDiscoverySku {
  standard("Standard"),
  free("Free");

  const StorageDiscoverySku(this.wireValue);
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

