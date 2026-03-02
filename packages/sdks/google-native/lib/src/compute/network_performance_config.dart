// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_performance_config_external_ip_egress_bandwidth_tier.dart';
import 'network_performance_config_total_egress_bandwidth_tier.dart';

class NetworkPerformanceConfig {
  final pulumi.Input<NetworkPerformanceConfigExternalIpEgressBandwidthTier>? externalIpEgressBandwidthTier;
  final pulumi.Input<NetworkPerformanceConfigTotalEgressBandwidthTier>? totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfig].
  /// [externalIpEgressBandwidthTier] Optional.
  /// [totalEgressBandwidthTier] Optional.
  NetworkPerformanceConfig({
    this.externalIpEgressBandwidthTier,
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigExternalIpEgressBandwidthTier, String>(externalIpEgressBandwidthTier, (value) => value.value),
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigTotalEgressBandwidthTier, String>(totalEgressBandwidthTier, (value) => value.value),
    };
  }

  factory NetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig(
      externalIpEgressBandwidthTier: map['externalIpEgressBandwidthTier'] == null ? null : (NetworkPerformanceConfigExternalIpEgressBandwidthTier.fromValue(map['externalIpEgressBandwidthTier'] as String)).input(),
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null ? null : (NetworkPerformanceConfigTotalEgressBandwidthTier.fromValue(map['totalEgressBandwidthTier'] as String)).input(),
    );
  }
}

