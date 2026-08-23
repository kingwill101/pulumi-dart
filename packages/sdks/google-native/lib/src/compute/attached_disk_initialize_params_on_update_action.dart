/// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
enum AttachedDiskInitializeParamsOnUpdateAction {
  recreateDisk("RECREATE_DISK"),
  recreateDiskIfSourceChanged("RECREATE_DISK_IF_SOURCE_CHANGED"),
  useExistingDisk("USE_EXISTING_DISK");

  const AttachedDiskInitializeParamsOnUpdateAction(this.wireValue);
  final String wireValue;

  static AttachedDiskInitializeParamsOnUpdateAction fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsOnUpdateAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInitializeParamsOnUpdateAction value: $value');
  }
}
