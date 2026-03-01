// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier for the instance.
  final String totalEgressBandwidthTier;

  /// Creates a new [GetInstanceTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier for the instance.
  GetInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory GetInstanceTemplateNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}

