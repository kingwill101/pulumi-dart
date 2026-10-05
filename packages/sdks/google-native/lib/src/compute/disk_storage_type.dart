import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Storage type of the persistent disk.
enum DiskStorageType implements pulumi.PulumiEnum<String> {
  hdd("HDD"),
  ssd("SSD");

  const DiskStorageType(this.wireValue);
  @override
  final String wireValue;

  static DiskStorageType fromValue(String value) {
    for (final item in DiskStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageType value: $value');
  }
}
