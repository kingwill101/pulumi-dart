import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
enum AttachedDiskMode implements pulumi.PulumiEnum<String> {
  diskModeUnspecified("DISK_MODE_UNSPECIFIED"),
  readWrite("READ_WRITE"),
  readOnly("READ_ONLY");

  const AttachedDiskMode(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskMode fromValue(String value) {
    for (final item in AttachedDiskMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskMode value: $value');
  }
}
