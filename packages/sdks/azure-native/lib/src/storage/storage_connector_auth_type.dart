/// Type of the authentication properties. Controls the type of the authProperties object
enum StorageConnectorAuthType {
  managedIdentity("ManagedIdentity");

  const StorageConnectorAuthType(this.wireValue);
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
