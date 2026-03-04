/// Persistent disk type to use. If unspecified (default), all types are considered, based on available usage data.
enum ComputeEnginePreferencesPersistentDiskType {
  persistentDiskTypeUnspecified("PERSISTENT_DISK_TYPE_UNSPECIFIED"),
  persistentDiskTypeStandard("PERSISTENT_DISK_TYPE_STANDARD"),
  persistentDiskTypeBalanced("PERSISTENT_DISK_TYPE_BALANCED"),
  persistentDiskTypeSsd("PERSISTENT_DISK_TYPE_SSD");

  const ComputeEnginePreferencesPersistentDiskType(this.wireValue);
  final String wireValue;

  static ComputeEnginePreferencesPersistentDiskType fromValue(String value) {
    for (final item in ComputeEnginePreferencesPersistentDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ComputeEnginePreferencesPersistentDiskType value: $value',
    );
  }
}
