// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_performance_config_total_egress_bandwidth_tier.dart';

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for the NodePool.
  final pulumi.Input<NetworkPerformanceConfigTotalEgressBandwidthTier>? totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  NetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigTotalEgressBandwidthTier, String>(totalEgressBandwidthTier, (value) => value.wireValue),
    };
  }

  factory NetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig(
      totalEgressBandwidthTier: (() { final guardedValue = map['totalEgressBandwidthTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPerformanceConfigTotalEgressBandwidthTier.fromValue(guardedValue as String)); })(),
    );
  }
}

