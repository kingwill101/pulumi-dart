enum NetworkPerformanceConfigExternalIpEgressBandwidthTier {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigExternalIpEgressBandwidthTier(this.wireValue);
  final String wireValue;

  static NetworkPerformanceConfigExternalIpEgressBandwidthTier fromValue(
    String value,
  ) {
    for (final item
        in NetworkPerformanceConfigExternalIpEgressBandwidthTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkPerformanceConfigExternalIpEgressBandwidthTier value: $value',
    );
  }
}
