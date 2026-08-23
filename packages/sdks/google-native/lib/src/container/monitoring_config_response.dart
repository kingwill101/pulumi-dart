// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_datapath_observability_config_response.dart';
import 'managed_prometheus_config_response.dart';
import 'monitoring_component_config_response.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfigResponse {
  /// Configuration of Advanced Datapath Observability features.
  final pulumi.Input<AdvancedDatapathObservabilityConfigResponse> advancedDatapathObservabilityConfig;
  /// Monitoring components configuration
  final pulumi.Input<MonitoringComponentConfigResponse> componentConfig;
  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final pulumi.Input<ManagedPrometheusConfigResponse> managedPrometheusConfig;

  /// Creates a new [MonitoringConfigResponse].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  const MonitoringConfigResponse({
    required this.advancedDatapathObservabilityConfig,
    required this.componentConfig,
    required this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfig': pulumi.Input.mapInputValue<AdvancedDatapathObservabilityConfigResponse, Map<String, dynamic>>(advancedDatapathObservabilityConfig, (value) => value.toMap()),
      'componentConfig': pulumi.Input.mapInputValue<MonitoringComponentConfigResponse, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
      'managedPrometheusConfig': pulumi.Input.mapInputValue<ManagedPrometheusConfigResponse, Map<String, dynamic>>(managedPrometheusConfig, (value) => value.toMap()),
    };
  }

  factory MonitoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigResponse(
      advancedDatapathObservabilityConfig: pulumi.Input.fromValue(AdvancedDatapathObservabilityConfigResponse.fromMap((map['advancedDatapathObservabilityConfig']! as Map).cast<String, dynamic>())),
      componentConfig: pulumi.Input.fromValue(MonitoringComponentConfigResponse.fromMap((map['componentConfig']! as Map).cast<String, dynamic>())),
      managedPrometheusConfig: pulumi.Input.fromValue(ManagedPrometheusConfigResponse.fromMap((map['managedPrometheusConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
