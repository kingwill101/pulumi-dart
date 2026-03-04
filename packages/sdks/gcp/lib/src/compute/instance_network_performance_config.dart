// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable.
  /// Possible values: TIER_1, DEFAULT
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [InstanceNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable.
  InstanceNetworkPerformanceConfig({required this.totalEgressBandwidthTier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory InstanceNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkPerformanceConfig(
      totalEgressBandwidthTier: pulumi.Input.fromValue(
        map['totalEgressBandwidthTier'] as String,
      ),
    );
  }
}
