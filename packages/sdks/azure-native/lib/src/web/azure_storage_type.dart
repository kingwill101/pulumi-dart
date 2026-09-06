import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of storage.
enum AzureStorageType implements pulumi.PulumiEnum<String> {
  valueAzureFiles("AzureFiles"),
  valueAzureBlob("AzureBlob");

  const AzureStorageType(this.wireValue);
  @override
  final String wireValue;

  static AzureStorageType fromValue(String value) {
    for (final item in AzureStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageType value: $value');
  }
}
