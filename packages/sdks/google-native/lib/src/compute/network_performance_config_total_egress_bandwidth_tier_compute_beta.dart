import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta implements pulumi.PulumiEnum<String> {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta fromValue(String value) {
    for (final item in NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta value: $value');
  }
}
