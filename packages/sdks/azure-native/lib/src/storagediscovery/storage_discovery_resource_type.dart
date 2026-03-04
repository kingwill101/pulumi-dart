/// Storage Discovery Resource Type
enum StorageDiscoveryResourceType {
  storageAccounts("Microsoft.Storage/storageAccounts");

  const StorageDiscoveryResourceType(this.wireValue);
  final String wireValue;

  static StorageDiscoveryResourceType fromValue(String value) {
    for (final item in StorageDiscoveryResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageDiscoveryResourceType value: $value');
  }
}
