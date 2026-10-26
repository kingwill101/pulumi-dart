import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The type of disk provisioning to use for the VM.
enum BootDiskDefaultsDiskType implements pulumi.PulumiEnum<String> {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const BootDiskDefaultsDiskType(this.wireValue);
  @override
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
