// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_monitoring_config_advanced_datapath_observability_config.dart';
import 'get_cluster_monitoring_config_managed_prometheus.dart';

class GetClusterMonitoringConfig {
  /// Configuration of Advanced Datapath Observability features.
  final pulumi.Input<
    List<GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig>
  >
  advancedDatapathObservabilityConfigs;

  /// GKE components exposing metrics. Valid values include SYSTEM_COMPONENTS, APISERVER, SCHEDULER, CONTROLLER_MANAGER, STORAGE, HPA, POD, DAEMONSET, DEPLOYMENT, STATEFULSET, WORKLOADS, KUBELET, CADVISOR, DCGM and JOBSET.
  final pulumi.Input<List<String>> enableComponents;

  /// Configuration for Google Cloud Managed Services for Prometheus.
  final pulumi.Input<List<GetClusterMonitoringConfigManagedPrometheus>>
  managedPrometheuses;

  /// Creates a new [GetClusterMonitoringConfig].
  /// [advancedDatapathObservabilityConfigs] Configuration of Advanced Datapath Observability features.
  /// [enableComponents] GKE components exposing metrics. Valid values include SYSTEM_COMPONENTS, APISERVER, SCHEDULER, CONTROLLER_MANAGER, STORAGE, HPA, POD, DAEMONSET, DEPLOYMENT, STATEFULSET, WORKLOADS, KUBELET, CADVISOR, DCGM and JOBSET.
  /// [managedPrometheuses] Configuration for Google Cloud Managed Services for Prometheus.
  GetClusterMonitoringConfig({
    required this.advancedDatapathObservabilityConfigs,
    required this.enableComponents,
    required this.managedPrometheuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfigs':
          pulumi.Input.mapInputValue<
            List<GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig>,
            List<Map<String, dynamic>>
          >(
            advancedDatapathObservabilityConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enableComponents': enableComponents,
      'managedPrometheuses':
          pulumi.Input.mapInputValue<
            List<GetClusterMonitoringConfigManagedPrometheus>,
            List<Map<String, dynamic>>
          >(
            managedPrometheuses,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterMonitoringConfigManagedPrometheus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterMonitoringConfig(
      advancedDatapathObservabilityConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig
        >(
          map['advancedDatapathObservabilityConfigs']!,
          (value) =>
              GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      enableComponents: pulumi.Input.fromValue(
        (map['enableComponents'] as List).cast<String>(),
      ),
      managedPrometheuses: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetClusterMonitoringConfigManagedPrometheus>(
          map['managedPrometheuses']!,
          (value) => GetClusterMonitoringConfigManagedPrometheus.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
