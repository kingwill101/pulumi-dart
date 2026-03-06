// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigResponseContainerV1beta1 {
  /// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  final pulumi.Input<String> externalIpEgressBandwidthTier;
  /// Specifies the total network bandwidth tier for the NodePool.
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponseContainerV1beta1].
  /// [externalIpEgressBandwidthTier] Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  const NetworkPerformanceConfigResponseContainerV1beta1({
    required this.externalIpEgressBandwidthTier,
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpEgressBandwidthTier': externalIpEgressBandwidthTier,
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory NetworkPerformanceConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponseContainerV1beta1(
      externalIpEgressBandwidthTier: pulumi.Input.fromValue(map['externalIpEgressBandwidthTier'] as String),
      totalEgressBandwidthTier: pulumi.Input.fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}

