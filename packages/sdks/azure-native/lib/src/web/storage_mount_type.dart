import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the storage mount.
enum StorageMountType implements pulumi.PulumiEnum<String> {
  azureFiles("AzureFiles"),
  localStorage("LocalStorage"),
  fileShare("FileShare");

  const StorageMountType(this.wireValue);
  @override
  final String wireValue;

  static StorageMountType fromValue(String value) {
    for (final item in StorageMountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageMountType value: $value');
  }
}
