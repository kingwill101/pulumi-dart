// ignore_for_file: unused_element, unnecessary_cast


class GetRegionInstanceTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier for the instance.
  final String totalEgressBandwidthTier;

  /// Creates a new [GetRegionInstanceTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier for the instance.
  GetRegionInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory GetRegionInstanceTemplateNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}

