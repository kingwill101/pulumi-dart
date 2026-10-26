import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Storage type of the persistent disk.
enum DiskStorageTypeComputeBeta implements pulumi.PulumiEnum<String> {
  hdd("HDD"),
  ssd("SSD");

  const DiskStorageTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static DiskStorageTypeComputeBeta fromValue(String value) {
    for (final item in DiskStorageTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageTypeComputeBeta value: $value');
  }
}
