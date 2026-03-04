// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_datapath_observability_config.dart';
import 'managed_prometheus_config.dart';
import 'monitoring_component_config.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfig {
  /// Configuration of Advanced Datapath Observability features.
  final pulumi.Input<AdvancedDatapathObservabilityConfig>?
  advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  final pulumi.Input<MonitoringComponentConfig>? componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final pulumi.Input<ManagedPrometheusConfig>? managedPrometheusConfig;

  /// Creates a new [MonitoringConfig].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  MonitoringConfig({
    this.advancedDatapathObservabilityConfig,
    this.componentConfig,
    this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AdvancedDatapathObservabilityConfig,
            Map<String, dynamic>
          >(advancedDatapathObservabilityConfig, (value) => value.toMap()),
      'componentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringComponentConfig,
            Map<String, dynamic>
          >(componentConfig, (value) => value.toMap()),
      'managedPrometheusConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedPrometheusConfig,
            Map<String, dynamic>
          >(managedPrometheusConfig, (value) => value.toMap()),
    };
  }

  factory MonitoringConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringConfig(
      advancedDatapathObservabilityConfig: (() {
        final guardedValue = map['advancedDatapathObservabilityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AdvancedDatapathObservabilityConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      componentConfig: (() {
        final guardedValue = map['componentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringComponentConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managedPrometheusConfig: (() {
        final guardedValue = map['managedPrometheusConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedPrometheusConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
