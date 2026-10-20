import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
enum NetworkConfigPeeringMode implements pulumi.PulumiEnum<String> {
  peeringModeUnspecified("PEERING_MODE_UNSPECIFIED"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const NetworkConfigPeeringMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigPeeringMode fromValue(String value) {
    for (final item in NetworkConfigPeeringMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigPeeringMode value: $value');
  }
}
