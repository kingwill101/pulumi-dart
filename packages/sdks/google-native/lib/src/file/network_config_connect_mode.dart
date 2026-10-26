import 'package:pulumi/pulumi.dart' as pulumi;

/// The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum NetworkConfigConnectMode implements pulumi.PulumiEnum<String> {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const NetworkConfigConnectMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigConnectMode fromValue(String value) {
    for (final item in NetworkConfigConnectMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigConnectMode value: $value');
  }
}
