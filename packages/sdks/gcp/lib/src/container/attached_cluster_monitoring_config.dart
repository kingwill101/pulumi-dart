// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_cluster_monitoring_config_managed_prometheus_config.dart';

class AttachedClusterMonitoringConfig {
  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterMonitoringConfigManagedPrometheusConfig>?
  managedPrometheusConfig;

  /// Creates a new [AttachedClusterMonitoringConfig].
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  AttachedClusterMonitoringConfig({this.managedPrometheusConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedPrometheusConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AttachedClusterMonitoringConfigManagedPrometheusConfig,
            Map<String, dynamic>
          >(managedPrometheusConfig, (value) => value.toMap()),
    };
  }

  factory AttachedClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterMonitoringConfig(
      managedPrometheusConfig: (() {
        final guardedValue = map['managedPrometheusConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AttachedClusterMonitoringConfigManagedPrometheusConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
