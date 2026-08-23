/// Type of the Storage Connector. Not mutable once the Storage Connector is created."
enum StorageConnectorSourceType {
  dataShare("DataShare");

  const StorageConnectorSourceType(this.wireValue);
  final String wireValue;

  static StorageConnectorSourceType fromValue(String value) {
    for (final item in StorageConnectorSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageConnectorSourceType value: $value');
  }
}
