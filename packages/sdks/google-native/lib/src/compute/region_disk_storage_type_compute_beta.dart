import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Storage type of the persistent disk.
enum RegionDiskStorageTypeComputeBeta implements pulumi.PulumiEnum<String> {
  hdd("HDD"),
  ssd("SSD");

  const RegionDiskStorageTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RegionDiskStorageTypeComputeBeta fromValue(String value) {
    for (final item in RegionDiskStorageTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskStorageTypeComputeBeta value: $value');
  }
}
