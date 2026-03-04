// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_datapath_observability_config_container_v1beta1.dart';
import 'managed_prometheus_config_container_v1beta1.dart';
import 'monitoring_component_config_container_v1beta1.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfigContainerV1beta1 {
  /// Configuration of Advanced Datapath Observability features.
  final pulumi.Input<AdvancedDatapathObservabilityConfigContainerV1beta1>?
  advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  final pulumi.Input<MonitoringComponentConfigContainerV1beta1>?
  componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final pulumi.Input<ManagedPrometheusConfigContainerV1beta1>?
  managedPrometheusConfig;

  /// Creates a new [MonitoringConfigContainerV1beta1].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  MonitoringConfigContainerV1beta1({
    this.advancedDatapathObservabilityConfig,
    this.componentConfig,
    this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AdvancedDatapathObservabilityConfigContainerV1beta1,
            Map<String, dynamic>
          >(advancedDatapathObservabilityConfig, (value) => value.toMap()),
      'componentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringComponentConfigContainerV1beta1,
            Map<String, dynamic>
          >(componentConfig, (value) => value.toMap()),
      'managedPrometheusConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedPrometheusConfigContainerV1beta1,
            Map<String, dynamic>
          >(managedPrometheusConfig, (value) => value.toMap()),
    };
  }

  factory MonitoringConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigContainerV1beta1(
      advancedDatapathObservabilityConfig: (() {
        final guardedValue = map['advancedDatapathObservabilityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AdvancedDatapathObservabilityConfigContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      componentConfig: (() {
        final guardedValue = map['componentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringComponentConfigContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managedPrometheusConfig: (() {
        final guardedValue = map['managedPrometheusConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedPrometheusConfigContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
