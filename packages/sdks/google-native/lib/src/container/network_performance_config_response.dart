// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigResponse {
  /// Specifies the total network bandwidth tier for the NodePool.
  final String totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponse].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  NetworkPerformanceConfigResponse({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory NetworkPerformanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponse(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}

