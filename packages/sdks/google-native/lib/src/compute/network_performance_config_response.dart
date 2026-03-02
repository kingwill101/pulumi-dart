// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPerformanceConfigResponse {
  final pulumi.Input<String> externalIpEgressBandwidthTier;
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponse].
  /// [externalIpEgressBandwidthTier] Required.
  /// [totalEgressBandwidthTier] Required.
  NetworkPerformanceConfigResponse({
    required this.externalIpEgressBandwidthTier,
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpEgressBandwidthTier': externalIpEgressBandwidthTier,
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory NetworkPerformanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponse(
      externalIpEgressBandwidthTier: (map['externalIpEgressBandwidthTier'] as String).input(),
      totalEgressBandwidthTier: (map['totalEgressBandwidthTier'] as String).input(),
    );
  }
}

