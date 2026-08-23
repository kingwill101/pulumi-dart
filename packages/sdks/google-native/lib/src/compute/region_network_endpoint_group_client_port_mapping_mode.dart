/// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
enum RegionNetworkEndpointGroupClientPortMappingMode {
  clientPortPerEndpoint("CLIENT_PORT_PER_ENDPOINT"),
  portMappingDisabled("PORT_MAPPING_DISABLED");

  const RegionNetworkEndpointGroupClientPortMappingMode(this.wireValue);
  final String wireValue;

  static RegionNetworkEndpointGroupClientPortMappingMode fromValue(String value) {
    for (final item in RegionNetworkEndpointGroupClientPortMappingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionNetworkEndpointGroupClientPortMappingMode value: $value');
  }
}
