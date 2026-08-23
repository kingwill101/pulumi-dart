// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_performance_config_total_egress_bandwidth_tier.dart';

/// Configuration of network bandwidth tiers
class ClusterNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final pulumi.Input<ClusterNetworkPerformanceConfigTotalEgressBandwidthTier>? totalEgressBandwidthTier;

  /// Creates a new [ClusterNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for NodePools in the cluster.
  const ClusterNetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfigTotalEgressBandwidthTier, String>(totalEgressBandwidthTier, (value) => value.wireValue),
    };
  }

  factory ClusterNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfig(
      totalEgressBandwidthTier: (() { final guardedValue = map['totalEgressBandwidthTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkPerformanceConfigTotalEgressBandwidthTier.fromValue(guardedValue as String)); })(),
    );
  }
}
