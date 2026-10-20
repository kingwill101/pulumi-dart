import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the total network bandwidth tier for the NodePool.
enum NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1 implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1 fromValue(String value) {
    for (final item in NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1 value: $value');
  }
}
