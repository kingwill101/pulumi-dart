// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values: TIER_1, DEFAULT
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [InstanceTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable. Possible values: TIER_1, DEFAULT
  const InstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory InstanceTemplateNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: pulumi.Input.fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
