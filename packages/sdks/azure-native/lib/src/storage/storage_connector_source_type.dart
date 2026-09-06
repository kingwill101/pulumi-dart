import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the Storage Connector. Not mutable once the Storage Connector is created."
enum StorageConnectorSourceType implements pulumi.PulumiEnum<String> {
  dataShare("DataShare");

  const StorageConnectorSourceType(this.wireValue);
  @override
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
