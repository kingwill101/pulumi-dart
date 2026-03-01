// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_monitoring_config_advanced_datapath_observability_config.dart';
import 'get_cluster_monitoring_config_managed_prometheus.dart';

class GetClusterMonitoringConfig {
  /// Configuration of Advanced Datapath Observability features.
  final List<GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig> advancedDatapathObservabilityConfigs;
  /// GKE components exposing metrics. Valid values include SYSTEM_COMPONENTS, APISERVER, SCHEDULER, CONTROLLER_MANAGER, STORAGE, HPA, POD, DAEMONSET, DEPLOYMENT, STATEFULSET, WORKLOADS, KUBELET, CADVISOR, DCGM and JOBSET.
  final List<String> enableComponents;
  /// Configuration for Google Cloud Managed Services for Prometheus.
  final List<GetClusterMonitoringConfigManagedPrometheus> managedPrometheuses;

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
      'advancedDatapathObservabilityConfigs': pulumi.Input.encodeList<GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig, Map<String, dynamic>>(advancedDatapathObservabilityConfigs, (value) => value.toMap()),
      'enableComponents': enableComponents,
      'managedPrometheuses': pulumi.Input.encodeList<GetClusterMonitoringConfigManagedPrometheus, Map<String, dynamic>>(managedPrometheuses, (value) => value.toMap()),
    };
  }

  factory GetClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterMonitoringConfig(
      advancedDatapathObservabilityConfigs: pulumi.Input.decodeList<GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig>(map['advancedDatapathObservabilityConfigs'], (value) => GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig.fromMap((value as Map).cast<String, dynamic>())),
      enableComponents: (map['enableComponents'] as List).cast<String>(),
      managedPrometheuses: pulumi.Input.decodeList<GetClusterMonitoringConfigManagedPrometheus>(map['managedPrometheuses'], (value) => GetClusterMonitoringConfigManagedPrometheus.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

