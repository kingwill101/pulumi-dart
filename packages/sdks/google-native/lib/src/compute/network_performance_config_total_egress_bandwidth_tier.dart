enum NetworkPerformanceConfigTotalEgressBandwidthTier {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTier(this.wireValue);
  final String wireValue;

  static NetworkPerformanceConfigTotalEgressBandwidthTier fromValue(String value) {
    for (final item in NetworkPerformanceConfigTotalEgressBandwidthTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPerformanceConfigTotalEgressBandwidthTier value: $value');
  }
}

