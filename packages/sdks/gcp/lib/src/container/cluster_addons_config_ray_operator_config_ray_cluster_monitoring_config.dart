// ignore_for_file: unused_element, unnecessary_cast


class ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig].
  /// [enabled] Required.
  ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

