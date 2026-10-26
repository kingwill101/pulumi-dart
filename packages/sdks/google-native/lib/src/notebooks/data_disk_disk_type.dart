import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Input only. Indicates the type of the disk.
enum DataDiskDiskType implements pulumi.PulumiEnum<String> {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  pdStandard("PD_STANDARD"),
  pdSsd("PD_SSD"),
  pdBalanced("PD_BALANCED"),
  pdExtreme("PD_EXTREME");

  const DataDiskDiskType(this.wireValue);
  @override
  final String wireValue;

  static DataDiskDiskType fromValue(String value) {
    for (final item in DataDiskDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataDiskDiskType value: $value');
  }
}
