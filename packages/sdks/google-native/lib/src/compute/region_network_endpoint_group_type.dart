/// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
enum RegionNetworkEndpointGroupType {
  loadBalancing("LOAD_BALANCING");

  const RegionNetworkEndpointGroupType(this.wireValue);
  final String wireValue;

  static RegionNetworkEndpointGroupType fromValue(String value) {
    for (final item in RegionNetworkEndpointGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionNetworkEndpointGroupType value: $value');
  }
}
