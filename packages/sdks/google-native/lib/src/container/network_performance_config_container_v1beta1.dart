// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_performance_config_external_ip_egress_bandwidth_tier.dart';
import 'network_performance_config_total_egress_bandwidth_tier_container_v1beta1.dart';

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigContainerV1beta1 {
  /// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  final pulumi.Input<NetworkPerformanceConfigExternalIpEgressBandwidthTier>? externalIpEgressBandwidthTier;
  /// Specifies the total network bandwidth tier for the NodePool.
  final pulumi.Input<NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1>? totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigContainerV1beta1].
  /// [externalIpEgressBandwidthTier] Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  NetworkPerformanceConfigContainerV1beta1({
    this.externalIpEgressBandwidthTier,
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigExternalIpEgressBandwidthTier, String>(externalIpEgressBandwidthTier, (value) => value.wireValue),
      'totalEgressBandwidthTier': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1, String>(totalEgressBandwidthTier, (value) => value.wireValue),
    };
  }

  factory NetworkPerformanceConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigContainerV1beta1(
      externalIpEgressBandwidthTier: (() { final guardedValue = map['externalIpEgressBandwidthTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPerformanceConfigExternalIpEgressBandwidthTier.fromValue(guardedValue as String)); })(),
      totalEgressBandwidthTier: (() { final guardedValue = map['totalEgressBandwidthTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

