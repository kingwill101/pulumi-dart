import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
enum AttachedDiskInitializeParamsOnUpdateActionComputeBeta implements pulumi.PulumiEnum<String> {
  recreateDisk("RECREATE_DISK"),
  recreateDiskIfSourceChanged("RECREATE_DISK_IF_SOURCE_CHANGED"),
  useExistingDisk("USE_EXISTING_DISK");

  const AttachedDiskInitializeParamsOnUpdateActionComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskInitializeParamsOnUpdateActionComputeBeta fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsOnUpdateActionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInitializeParamsOnUpdateActionComputeBeta value: $value');
  }
}
