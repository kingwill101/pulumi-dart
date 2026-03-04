/// Optional. The type of disk provisioning to use for the VM.
enum BootDiskDefaultsDiskType {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const BootDiskDefaultsDiskType(this.wireValue);
  final String wireValue;

  static BootDiskDefaultsDiskType fromValue(String value) {
    for (final item in BootDiskDefaultsDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootDiskDefaultsDiskType value: $value');
  }
}
