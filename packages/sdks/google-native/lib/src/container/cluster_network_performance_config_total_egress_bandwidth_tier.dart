import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the total network bandwidth tier for NodePools in the cluster.
enum ClusterNetworkPerformanceConfigTotalEgressBandwidthTier implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const ClusterNetworkPerformanceConfigTotalEgressBandwidthTier(this.wireValue);
  @override
  final String wireValue;

  static ClusterNetworkPerformanceConfigTotalEgressBandwidthTier fromValue(String value) {
    for (final item in ClusterNetworkPerformanceConfigTotalEgressBandwidthTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterNetworkPerformanceConfigTotalEgressBandwidthTier value: $value');
  }
}
