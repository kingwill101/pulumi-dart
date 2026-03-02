// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [InstanceFromMachineImageNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  InstanceFromMachineImageNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory InstanceFromMachineImageNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageNetworkPerformanceConfig(
      totalEgressBandwidthTier: (map['totalEgressBandwidthTier'] as String).input(),
    );
  }
}

