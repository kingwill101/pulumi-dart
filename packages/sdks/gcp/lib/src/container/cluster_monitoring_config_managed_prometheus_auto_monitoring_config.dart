// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig {
  /// Whether or not to enable GKE Auto-Monitoring. Supported values include: `ALL`, `NONE`.
  final pulumi.Input<String> scope;

  /// Creates a new [ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig].
  /// [scope] Whether or not to enable GKE Auto-Monitoring. Supported values include: `ALL`, `NONE`.
  const ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
    };
  }

  factory ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig(
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

