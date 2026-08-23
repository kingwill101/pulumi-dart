// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig {
  /// Possible values are: `TIER_UNSPECIFIED`, `DEFAULT`, `TIER_1`.
  final pulumi.Input<String>? totalEgressBandwidthTier;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Possible values are: `TIER_UNSPECIFIED`, `DEFAULT`, `TIER_1`.
  const RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?totalEgressBandwidthTier,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig(
      totalEgressBandwidthTier: (() { final guardedValue = map['totalEgressBandwidthTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
