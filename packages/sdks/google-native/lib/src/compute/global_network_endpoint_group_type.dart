/// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
enum GlobalNetworkEndpointGroupType {
  loadBalancing("LOAD_BALANCING");

  const GlobalNetworkEndpointGroupType(this.wireValue);
  final String wireValue;

  static GlobalNetworkEndpointGroupType fromValue(String value) {
    for (final item in GlobalNetworkEndpointGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalNetworkEndpointGroupType value: $value');
  }
}
