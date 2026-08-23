// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_datapath_observability_config_response_container_v1beta1.dart';
import 'managed_prometheus_config_response_container_v1beta1.dart';
import 'monitoring_component_config_response_container_v1beta1.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfigResponseContainerV1beta1 {
  /// Configuration of Advanced Datapath Observability features.
  final pulumi.Input<AdvancedDatapathObservabilityConfigResponseContainerV1beta1> advancedDatapathObservabilityConfig;
  /// Monitoring components configuration
  final pulumi.Input<MonitoringComponentConfigResponseContainerV1beta1> componentConfig;
  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final pulumi.Input<ManagedPrometheusConfigResponseContainerV1beta1> managedPrometheusConfig;

  /// Creates a new [MonitoringConfigResponseContainerV1beta1].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  const MonitoringConfigResponseContainerV1beta1({
    required this.advancedDatapathObservabilityConfig,
    required this.componentConfig,
    required this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfig': pulumi.Input.mapInputValue<AdvancedDatapathObservabilityConfigResponseContainerV1beta1, Map<String, dynamic>>(advancedDatapathObservabilityConfig, (value) => value.toMap()),
      'componentConfig': pulumi.Input.mapInputValue<MonitoringComponentConfigResponseContainerV1beta1, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
      'managedPrometheusConfig': pulumi.Input.mapInputValue<ManagedPrometheusConfigResponseContainerV1beta1, Map<String, dynamic>>(managedPrometheusConfig, (value) => value.toMap()),
    };
  }

  factory MonitoringConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigResponseContainerV1beta1(
      advancedDatapathObservabilityConfig: pulumi.Input.fromValue(AdvancedDatapathObservabilityConfigResponseContainerV1beta1.fromMap((map['advancedDatapathObservabilityConfig']! as Map).cast<String, dynamic>())),
      componentConfig: pulumi.Input.fromValue(MonitoringComponentConfigResponseContainerV1beta1.fromMap((map['componentConfig']! as Map).cast<String, dynamic>())),
      managedPrometheusConfig: pulumi.Input.fromValue(ManagedPrometheusConfigResponseContainerV1beta1.fromMap((map['managedPrometheusConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
