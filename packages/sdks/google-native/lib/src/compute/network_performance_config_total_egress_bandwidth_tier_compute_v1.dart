import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1 implements pulumi.PulumiEnum<String> {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1(this.wireValue);
  @override
  final String wireValue;

  static NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1 fromValue(String value) {
    for (final item in NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1 value: $value');
  }
}
