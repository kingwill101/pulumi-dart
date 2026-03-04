enum NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta(
    this.wireValue,
  );
  final String wireValue;

  static NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta value: $value',
    );
  }
}
