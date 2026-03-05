/// The server key type like 'ServiceManaged', 'AzureKeyVault'.
enum ServerKeyType {
  valueServiceManaged("ServiceManaged"),
  valueAzureKeyVault("AzureKeyVault");

  const ServerKeyType(this.wireValue);
  final String wireValue;

  static ServerKeyType fromValue(String value) {
    for (final item in ServerKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerKeyType value: $value');
  }
}

