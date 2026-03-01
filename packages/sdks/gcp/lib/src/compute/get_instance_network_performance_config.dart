// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceNetworkPerformanceConfig {
  /// The egress bandwidth tier for the instance.
  final String totalEgressBandwidthTier;

  /// Creates a new [GetInstanceNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier for the instance.
  GetInstanceNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory GetInstanceNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}

