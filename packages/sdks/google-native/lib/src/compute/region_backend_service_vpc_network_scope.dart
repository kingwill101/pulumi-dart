/// The network scope of the backends that can be added to the backend service. This field can be either GLOBAL_VPC_NETWORK or REGIONAL_VPC_NETWORK. A backend service with the VPC scope set to GLOBAL_VPC_NETWORK is only allowed to have backends in global VPC networks. When the VPC scope is set to REGIONAL_VPC_NETWORK the backend service is only allowed to have backends in regional networks in the same scope as the backend service. Note: if not specified then GLOBAL_VPC_NETWORK will be used.
enum RegionBackendServiceVpcNetworkScope {
  globalVpcNetwork("GLOBAL_VPC_NETWORK"),
  regionalVpcNetwork("REGIONAL_VPC_NETWORK");

  const RegionBackendServiceVpcNetworkScope(this.wireValue);
  final String wireValue;

  static RegionBackendServiceVpcNetworkScope fromValue(String value) {
    for (final item in RegionBackendServiceVpcNetworkScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionBackendServiceVpcNetworkScope value: $value');
  }
}

