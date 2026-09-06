import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the connection. Controls the type of the connection object. Not mutable once the Storage Connector is created.
enum StorageConnectorConnectionType implements pulumi.PulumiEnum<String> {
  dataShare("DataShare");

  const StorageConnectorConnectionType(this.wireValue);
  @override
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
