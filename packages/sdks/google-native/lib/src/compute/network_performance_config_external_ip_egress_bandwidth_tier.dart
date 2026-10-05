import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkPerformanceConfigExternalIpEgressBandwidthTier implements pulumi.PulumiEnum<String> {
  default_("DEFAULT"),
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
