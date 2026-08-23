/// Optional. The type of disk provisioning to use for the VM.
enum BootDiskDefaultsDiskTypeVmmigrationV1alpha1 {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const BootDiskDefaultsDiskTypeVmmigrationV1alpha1(this.wireValue);
  final String wireValue;

  static BootDiskDefaultsDiskTypeVmmigrationV1alpha1 fromValue(String value) {
    for (final item in BootDiskDefaultsDiskTypeVmmigrationV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootDiskDefaultsDiskTypeVmmigrationV1alpha1 value: $value');
  }
}
