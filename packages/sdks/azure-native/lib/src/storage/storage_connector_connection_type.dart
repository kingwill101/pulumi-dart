/// Type of the connection. Controls the type of the connection object. Not mutable once the Storage Connector is created.
enum StorageConnectorConnectionType {
  dataShare("DataShare");

  const StorageConnectorConnectionType(this.wireValue);
  final String wireValue;

  static StorageConnectorConnectionType fromValue(String value) {
    for (final item in StorageConnectorConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageConnectorConnectionType value: $value');
  }
}
