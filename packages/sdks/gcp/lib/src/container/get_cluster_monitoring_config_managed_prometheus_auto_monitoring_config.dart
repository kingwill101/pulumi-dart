// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig {
  /// The scope of auto-monitoring.
  final pulumi.Input<String> scope;

  /// Creates a new [GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig].
  /// [scope] The scope of auto-monitoring.
  const GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
    };
  }

  factory GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig(
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

