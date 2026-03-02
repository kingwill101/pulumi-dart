// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedClusterMonitoringConfigManagedPrometheusConfig {
  /// Enable Managed Collection.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AttachedClusterMonitoringConfigManagedPrometheusConfig].
  /// [enabled] Enable Managed Collection.
  AttachedClusterMonitoringConfigManagedPrometheusConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AttachedClusterMonitoringConfigManagedPrometheusConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterMonitoringConfigManagedPrometheusConfig(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

