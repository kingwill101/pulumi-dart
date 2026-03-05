/// Specifies the total network bandwidth tier for the NodePool.
enum ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1 {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1(this.wireValue);
  final String wireValue;

  static ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1 fromValue(String value) {
    for (final item in ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1 value: $value');
  }
}

