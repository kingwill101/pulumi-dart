// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_performance_config_total_egress_bandwidth_tier.dart';

/// Configuration of network bandwidth tiers
class ClusterNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final pulumi.Input<ClusterNetworkPerformanceConfigTotalEgressBandwidthTier>? totalEgressBandwidthTier;

  /// Creates a new [ClusterNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for NodePools in the cluster.
  ClusterNetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfigTotalEgressBandwidthTier, String>(totalEgressBandwidthTier, (value) => value.value),
    };
  }

  factory ClusterNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null ? null : (ClusterNetworkPerformanceConfigTotalEgressBandwidthTier.fromValue(map['totalEgressBandwidthTier']! as String)).input(),
    );
  }
}

