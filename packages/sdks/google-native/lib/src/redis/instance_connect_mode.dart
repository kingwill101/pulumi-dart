import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum InstanceConnectMode implements pulumi.PulumiEnum<String> {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const InstanceConnectMode(this.wireValue);
  @override
  final String wireValue;

  static InstanceConnectMode fromValue(String value) {
    for (final item in InstanceConnectMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceConnectMode value: $value');
  }
}
