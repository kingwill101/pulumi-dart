// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_addons_config_ray_operator_config_ray_cluster_logging_config.dart';
import 'get_cluster_addons_config_ray_operator_config_ray_cluster_monitoring_config.dart';

class GetClusterAddonsConfigRayOperatorConfig {
  final pulumi.Input<bool> enabled;
  /// The status of Ray Logging, which scrapes Ray cluster logs to Cloud Logging. Defaults to disabled; set enabled = true to enable.
  final pulumi.Input<List<GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig>> rayClusterLoggingConfigs;
  /// The status of Ray Cluster monitoring, which shows Ray cluster metrics in Cloud Console. Defaults to disabled; set enabled = true to enable.
  final pulumi.Input<List<GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig>> rayClusterMonitoringConfigs;

  /// Creates a new [GetClusterAddonsConfigRayOperatorConfig].
  /// [enabled] Required.
  /// [rayClusterLoggingConfigs] The status of Ray Logging, which scrapes Ray cluster logs to Cloud Logging. Defaults to disabled; set enabled = true to enable.
  /// [rayClusterMonitoringConfigs] The status of Ray Cluster monitoring, which shows Ray cluster metrics in Cloud Console. Defaults to disabled; set enabled = true to enable.
  const GetClusterAddonsConfigRayOperatorConfig({
    required this.enabled,
    required this.rayClusterLoggingConfigs,
    required this.rayClusterMonitoringConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rayClusterLoggingConfigs': pulumi.Input.mapInputValue<List<GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig>, List<Map<String, dynamic>>>(rayClusterLoggingConfigs, (value) => pulumi.Input.encodeList<GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rayClusterMonitoringConfigs': pulumi.Input.mapInputValue<List<GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig>, List<Map<String, dynamic>>>(rayClusterMonitoringConfigs, (value) => pulumi.Input.encodeList<GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterAddonsConfigRayOperatorConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigRayOperatorConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rayClusterLoggingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig>(map['rayClusterLoggingConfigs']!, (value) => GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      rayClusterMonitoringConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig>(map['rayClusterMonitoringConfigs']!, (value) => GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

