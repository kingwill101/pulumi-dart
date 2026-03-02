// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_performance_config_total_egress_bandwidth_tier_container_v1beta1.dart';

/// Configuration of all network bandwidth tiers
class ClusterNetworkPerformanceConfigContainerV1beta1 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final pulumi.Input<ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1>? totalEgressBandwidthTier;

  /// Creates a new [ClusterNetworkPerformanceConfigContainerV1beta1].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  ClusterNetworkPerformanceConfigContainerV1beta1({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1, String>(totalEgressBandwidthTier, (value) => value.value),
    };
  }

  factory ClusterNetworkPerformanceConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfigContainerV1beta1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null ? null : (ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1.fromValue(map['totalEgressBandwidthTier'] as String)).input(),
    );
  }
}

