import 'package:pulumi/pulumi.dart' as pulumi;

/// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
enum NetworkEndpointGroupClientPortMappingMode implements pulumi.PulumiEnum<String> {
  clientPortPerEndpoint("CLIENT_PORT_PER_ENDPOINT"),
  portMappingDisabled("PORT_MAPPING_DISABLED");

  const NetworkEndpointGroupClientPortMappingMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkEndpointGroupClientPortMappingMode fromValue(String value) {
    for (final item in NetworkEndpointGroupClientPortMappingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkEndpointGroupClientPortMappingMode value: $value');
  }
}
