/// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
enum ClusterDefaultStorageType {
  storageTypeUnspecified("STORAGE_TYPE_UNSPECIFIED"),
  ssd("SSD"),
  hdd("HDD");

  const ClusterDefaultStorageType(this.wireValue);
  final String wireValue;

  static ClusterDefaultStorageType fromValue(String value) {
    for (final item in ClusterDefaultStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterDefaultStorageType value: $value');
  }
}
