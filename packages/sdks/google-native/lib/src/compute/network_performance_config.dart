// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_performance_config_external_ip_egress_bandwidth_tier.dart';
import 'network_performance_config_total_egress_bandwidth_tier.dart';

class NetworkPerformanceConfig {
  final pulumi.Input<NetworkPerformanceConfigExternalIpEgressBandwidthTier>?
  externalIpEgressBandwidthTier;
  final pulumi.Input<NetworkPerformanceConfigTotalEgressBandwidthTier>?
  totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfig].
  /// [externalIpEgressBandwidthTier] Optional.
  /// [totalEgressBandwidthTier] Optional.
  NetworkPerformanceConfig({
    this.externalIpEgressBandwidthTier,
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpEgressBandwidthTier':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkPerformanceConfigExternalIpEgressBandwidthTier,
            String
          >(externalIpEgressBandwidthTier, (value) => value.wireValue),
      'totalEgressBandwidthTier':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkPerformanceConfigTotalEgressBandwidthTier,
            String
          >(totalEgressBandwidthTier, (value) => value.wireValue),
    };
  }

  factory NetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig(
      externalIpEgressBandwidthTier: (() {
        final guardedValue = map['externalIpEgressBandwidthTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkPerformanceConfigExternalIpEgressBandwidthTier.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      totalEgressBandwidthTier: (() {
        final guardedValue = map['totalEgressBandwidthTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkPerformanceConfigTotalEgressBandwidthTier.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
