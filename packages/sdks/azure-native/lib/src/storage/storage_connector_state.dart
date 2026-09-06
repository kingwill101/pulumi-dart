import 'package:pulumi/pulumi.dart' as pulumi;

/// State - Active or Inactive. Whether or not the Storage Connector should start as active (default: Active)
/// (While set to false on the Storage Connector, all data plane requests using this Storage Connector fail, and this Storage Connector is not billed if it would be otherwise.
enum StorageConnectorState implements pulumi.PulumiEnum<String> {
  active("Active"),
  inactive("Inactive");

  const StorageConnectorState(this.wireValue);
  @override
  final String wireValue;

  static StorageConnectorState fromValue(String value) {
    for (final item in StorageConnectorState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageConnectorState value: $value');
  }
}
