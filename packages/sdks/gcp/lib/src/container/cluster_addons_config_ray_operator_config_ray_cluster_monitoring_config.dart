// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig {
  /// Whether Ray Cluster monitoring is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig].
  /// [enabled] Whether Ray Cluster monitoring is enabled.
  const ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
