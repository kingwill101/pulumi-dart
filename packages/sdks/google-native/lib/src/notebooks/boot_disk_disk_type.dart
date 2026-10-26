import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Indicates the type of the disk.
enum BootDiskDiskType implements pulumi.PulumiEnum<String> {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  pdStandard("PD_STANDARD"),
  pdSsd("PD_SSD"),
  pdBalanced("PD_BALANCED"),
  pdExtreme("PD_EXTREME");

  const BootDiskDiskType(this.wireValue);
  @override
  final String wireValue;

  static BootDiskDiskType fromValue(String value) {
    for (final item in BootDiskDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootDiskDiskType value: $value');
  }
}
