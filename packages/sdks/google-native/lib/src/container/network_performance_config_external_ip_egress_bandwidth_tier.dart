import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
enum NetworkPerformanceConfigExternalIpEgressBandwidthTier implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigExternalIpEgressBandwidthTier(this.wireValue);
  @override
  final String wireValue;

  static NetworkPerformanceConfigExternalIpEgressBandwidthTier fromValue(String value) {
    for (final item in NetworkPerformanceConfigExternalIpEgressBandwidthTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPerformanceConfigExternalIpEgressBandwidthTier value: $value');
  }
}
