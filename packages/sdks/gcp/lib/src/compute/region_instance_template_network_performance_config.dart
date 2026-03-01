// ignore_for_file: unused_element, unnecessary_cast


class RegionInstanceTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values: TIER_1, DEFAULT
  final String totalEgressBandwidthTier;

  /// Creates a new [RegionInstanceTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable. Possible values: TIER_1, DEFAULT
  RegionInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory RegionInstanceTemplateNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}

