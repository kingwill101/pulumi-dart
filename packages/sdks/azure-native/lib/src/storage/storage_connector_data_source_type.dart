import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of backing data source for this Storage Connector.
enum StorageConnectorDataSourceType implements pulumi.PulumiEnum<String> {
  azureDataShare("Azure_DataShare");

  const StorageConnectorDataSourceType(this.wireValue);
  @override
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
