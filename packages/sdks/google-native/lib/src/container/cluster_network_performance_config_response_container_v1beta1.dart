// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of all network bandwidth tiers
class ClusterNetworkPerformanceConfigResponseContainerV1beta1 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [ClusterNetworkPerformanceConfigResponseContainerV1beta1].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  const ClusterNetworkPerformanceConfigResponseContainerV1beta1({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory ClusterNetworkPerformanceConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfigResponseContainerV1beta1(
      totalEgressBandwidthTier: pulumi.Input.fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
