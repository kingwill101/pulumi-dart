// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [GetClusterNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for NodePools in the cluster.
  GetClusterNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory GetClusterNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNetworkPerformanceConfig(
      totalEgressBandwidthTier: (map['totalEgressBandwidthTier'] as String).input(),
    );
  }
}

