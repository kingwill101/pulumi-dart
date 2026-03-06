// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_monitoring_config_managed_prometheus_auto_monitoring_config.dart';

class ClusterMonitoringConfigManagedPrometheus {
  /// Configuration options for GKE Auto-Monitoring.
  final pulumi.Input<ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig>? autoMonitoringConfig;
  /// Whether or not the managed collection is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterMonitoringConfigManagedPrometheus].
  /// [autoMonitoringConfig] Configuration options for GKE Auto-Monitoring.
  /// [enabled] Whether or not the managed collection is enabled.
  const ClusterMonitoringConfigManagedPrometheus({
    this.autoMonitoringConfig,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoMonitoringConfig': ?pulumi.Input.mapOptionalInputValue<ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig, Map<String, dynamic>>(autoMonitoringConfig, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory ClusterMonitoringConfigManagedPrometheus.fromMap(Map<String, dynamic> map) {
    return ClusterMonitoringConfigManagedPrometheus(
      autoMonitoringConfig: (() { final guardedValue = map['autoMonitoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

