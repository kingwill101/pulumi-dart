import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Discovery Resource Type
enum StorageDiscoveryResourceType implements pulumi.PulumiEnum<String> {
  storageAccounts("Microsoft.Storage/storageAccounts");

  const StorageDiscoveryResourceType(this.wireValue);
  @override
  final String wireValue;

  static StorageDiscoveryResourceType fromValue(String value) {
    for (final item in StorageDiscoveryResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageDiscoveryResourceType value: $value');
  }
}
