/// The disk type to use.
enum PersistentDiskDefaultsDiskType {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const PersistentDiskDefaultsDiskType(this.wireValue);
  final String wireValue;

  static PersistentDiskDefaultsDiskType fromValue(String value) {
    for (final item in PersistentDiskDefaultsDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersistentDiskDefaultsDiskType value: $value');
  }
}

