import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage account type used to store backups for this sql pool.
enum StorageAccountType implements pulumi.PulumiEnum<String> {
  valueGRS("GRS"),
  valueLRS("LRS");

  const StorageAccountType(this.wireValue);
  @override
  final String wireValue;

  static StorageAccountType fromValue(String value) {
    for (final item in StorageAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountType value: $value');
  }
}
