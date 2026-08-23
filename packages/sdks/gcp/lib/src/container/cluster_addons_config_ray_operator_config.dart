// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_addons_config_ray_operator_config_ray_cluster_logging_config.dart';
import 'cluster_addons_config_ray_operator_config_ray_cluster_monitoring_config.dart';

class ClusterAddonsConfigRayOperatorConfig {
  final pulumi.Input<bool> enabled;
  /// The status of Ray Logging, which scrapes Ray cluster logs to Cloud Logging. Defaults to disabled; set enabled = true to enable.
  final pulumi.Input<ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig>? rayClusterLoggingConfig;
  /// The status of Ray Cluster monitoring, which shows Ray cluster metrics in Cloud Console. Defaults to disabled; set enabled = true to enable.
  final pulumi.Input<ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig>? rayClusterMonitoringConfig;

  /// Creates a new [ClusterAddonsConfigRayOperatorConfig].
  /// [enabled] Required.
  /// [rayClusterLoggingConfig] The status of Ray Logging, which scrapes Ray cluster logs to Cloud Logging. Defaults to disabled; set enabled = true to enable.
  /// [rayClusterMonitoringConfig] The status of Ray Cluster monitoring, which shows Ray cluster metrics in Cloud Console. Defaults to disabled; set enabled = true to enable.
  const ClusterAddonsConfigRayOperatorConfig({
    required this.enabled,
    this.rayClusterLoggingConfig,
    this.rayClusterMonitoringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rayClusterLoggingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig, Map<String, dynamic>>(rayClusterLoggingConfig, (value) => value.toMap()),
      'rayClusterMonitoringConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig, Map<String, dynamic>>(rayClusterMonitoringConfig, (value) => value.toMap()),
    };
  }

  factory ClusterAddonsConfigRayOperatorConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigRayOperatorConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rayClusterLoggingConfig: (() { final guardedValue = map['rayClusterLoggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rayClusterMonitoringConfig: (() { final guardedValue = map['rayClusterMonitoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
