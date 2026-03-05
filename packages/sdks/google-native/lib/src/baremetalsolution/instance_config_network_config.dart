/// The type of network configuration on the instance.
enum InstanceConfigNetworkConfig {
  networkconfigUnspecified("NETWORKCONFIG_UNSPECIFIED"),
  singleVlan("SINGLE_VLAN"),
  multiVlan("MULTI_VLAN");

  const InstanceConfigNetworkConfig(this.wireValue);
  final String wireValue;

  static InstanceConfigNetworkConfig fromValue(String value) {
    for (final item in InstanceConfigNetworkConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceConfigNetworkConfig value: $value');
  }
}

