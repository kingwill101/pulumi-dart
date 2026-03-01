enum StorageType {
  valueLocalNode("LocalNode"),
  valueNetworkFileSystem("NetworkFileSystem");

  const StorageType(this.value);
  final String value;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}

