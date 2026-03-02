// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_performance_config_total_egress_bandwidth_tier_compute_beta.dart';

class NetworkPerformanceConfigComputeBeta {
  final pulumi.Input<NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta>? totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigComputeBeta].
  /// [totalEgressBandwidthTier] Optional.
  NetworkPerformanceConfigComputeBeta({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta, String>(totalEgressBandwidthTier, (value) => value.value),
    };
  }

  factory NetworkPerformanceConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigComputeBeta(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null ? null : (NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta.fromValue(map['totalEgressBandwidthTier'] as String)).input(),
    );
  }
}

