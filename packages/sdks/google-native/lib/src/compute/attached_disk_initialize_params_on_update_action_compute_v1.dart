/// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
enum AttachedDiskInitializeParamsOnUpdateActionComputeV1 {
  recreateDisk("RECREATE_DISK"),
  recreateDiskIfSourceChanged("RECREATE_DISK_IF_SOURCE_CHANGED"),
  useExistingDisk("USE_EXISTING_DISK");

  const AttachedDiskInitializeParamsOnUpdateActionComputeV1(this.wireValue);
  final String wireValue;

  static AttachedDiskInitializeParamsOnUpdateActionComputeV1 fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsOnUpdateActionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInitializeParamsOnUpdateActionComputeV1 value: $value');
  }
}
