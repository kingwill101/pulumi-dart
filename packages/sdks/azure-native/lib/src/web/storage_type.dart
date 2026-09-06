import 'package:pulumi/pulumi.dart' as pulumi;

enum StorageType implements pulumi.PulumiEnum<String> {
  valueLocalNode("LocalNode"),
  valueNetworkFileSystem("NetworkFileSystem");

  const StorageType(this.wireValue);
  @override
  final String wireValue;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}
