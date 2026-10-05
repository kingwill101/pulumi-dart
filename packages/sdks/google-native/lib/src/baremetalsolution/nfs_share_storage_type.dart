import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The storage type of the underlying volume.
enum NfsShareStorageType implements pulumi.PulumiEnum<String> {
  storageTypeUnspecified("STORAGE_TYPE_UNSPECIFIED"),
  ssd("SSD"),
  hdd("HDD");

  const NfsShareStorageType(this.wireValue);
  @override
  final String wireValue;

  static NfsShareStorageType fromValue(String value) {
    for (final item in NfsShareStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsShareStorageType value: $value');
  }
}
