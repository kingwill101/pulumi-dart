/// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
enum NetworkEndpointGroupType {
  loadBalancing("LOAD_BALANCING");

  const NetworkEndpointGroupType(this.wireValue);
  final String wireValue;

  static NetworkEndpointGroupType fromValue(String value) {
    for (final item in NetworkEndpointGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkEndpointGroupType value: $value');
  }
}
