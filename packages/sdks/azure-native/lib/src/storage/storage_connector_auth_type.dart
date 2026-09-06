import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the authentication properties. Controls the type of the authProperties object
enum StorageConnectorAuthType implements pulumi.PulumiEnum<String> {
  managedIdentity("ManagedIdentity");

  const StorageConnectorAuthType(this.wireValue);
  @override
  final String wireValue;

  static StorageConnectorAuthType fromValue(String value) {
    for (final item in StorageConnectorAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageConnectorAuthType value: $value');
  }
}
