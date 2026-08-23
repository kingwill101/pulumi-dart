/// The type of backing data source for this Storage Connector.
enum StorageConnectorDataSourceType {
  azureDataShare("Azure_DataShare");

  const StorageConnectorDataSourceType(this.wireValue);
  final String wireValue;

  static StorageConnectorDataSourceType fromValue(String value) {
    for (final item in StorageConnectorDataSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageConnectorDataSourceType value: $value');
  }
}
