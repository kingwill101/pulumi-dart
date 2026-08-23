// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [InstanceFromTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  const InstanceFromTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory InstanceFromTemplateNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: pulumi.Input.fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
