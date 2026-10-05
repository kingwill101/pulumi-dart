import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
enum AttachedDiskModeTpuV2alpha1 implements pulumi.PulumiEnum<String> {
  diskModeUnspecified("DISK_MODE_UNSPECIFIED"),
  readWrite("READ_WRITE"),
  readOnly("READ_ONLY");

  const AttachedDiskModeTpuV2alpha1(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskModeTpuV2alpha1 fromValue(String value) {
    for (final item in AttachedDiskModeTpuV2alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskModeTpuV2alpha1 value: $value');
  }
}
