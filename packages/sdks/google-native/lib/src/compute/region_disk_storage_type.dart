import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Storage type of the persistent disk.
enum RegionDiskStorageType implements pulumi.PulumiEnum<String> {
  hdd("HDD"),
  ssd("SSD");

  const RegionDiskStorageType(this.wireValue);
  @override
  final String wireValue;

  static RegionDiskStorageType fromValue(String value) {
    for (final item in RegionDiskStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskStorageType value: $value');
  }
}
