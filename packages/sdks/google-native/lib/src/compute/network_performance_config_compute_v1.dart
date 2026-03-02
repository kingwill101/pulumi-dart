// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_performance_config_total_egress_bandwidth_tier_compute_v1.dart';

class NetworkPerformanceConfigComputeV1 {
  final pulumi.Input<NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1>? totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigComputeV1].
  /// [totalEgressBandwidthTier] Optional.
  NetworkPerformanceConfigComputeV1({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1, String>(totalEgressBandwidthTier, (value) => value.value),
    };
  }

  factory NetworkPerformanceConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigComputeV1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null ? null : (NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1.fromValue(map['totalEgressBandwidthTier'] as String)).input(),
    );
  }
}

