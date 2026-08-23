// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_monitoring_config_advanced_datapath_observability_config.dart';
import 'cluster_monitoring_config_managed_prometheus.dart';

class ClusterMonitoringConfig {
  /// Configuration for Advanced Datapath Monitoring. Structure is documented below.
  final pulumi.Input<ClusterMonitoringConfigAdvancedDatapathObservabilityConfig>? advancedDatapathObservabilityConfig;
  /// The GKE components exposing metrics. Supported values include: `SYSTEM_COMPONENTS`, `APISERVER`, `SCHEDULER`, `CONTROLLER_MANAGER`, `STORAGE`, `HPA`, `POD`, `DAEMONSET`, `DEPLOYMENT`, `STATEFULSET`, `KUBELET`, `CADVISOR`, `DCGM` and `JOBSET`. In beta provider, `WORKLOADS` is supported on top of those 12 values. (`WORKLOADS` is deprecated and removed in GKE 1.24.) `KUBELET` and `CADVISOR` are only supported in GKE 1.29.3-gke.1093000 and above. `JOBSET` is only supported in GKE 1.32.1-gke.1357001 and above.
  final pulumi.Input<List<String>>? enableComponents;
  /// Configuration for Managed Service for Prometheus. Structure is documented below.
  final pulumi.Input<ClusterMonitoringConfigManagedPrometheus>? managedPrometheus;

  /// Creates a new [ClusterMonitoringConfig].
  /// [advancedDatapathObservabilityConfig] Configuration for Advanced Datapath Monitoring. Structure is documented below.
  /// [enableComponents] The GKE components exposing metrics. Supported values include: `SYSTEM_COMPONENTS`, `APISERVER`, `SCHEDULER`, `CONTROLLER_MANAGER`, `STORAGE`, `HPA`, `POD`, `DAEMONSET`, `DEPLOYMENT`, `STATEFULSET`, `KUBELET`, `CADVISOR`, `DCGM` and `JOBSET`. In beta provider, `WORKLOADS` is supported on top of those 12 values. (`WORKLOADS` is deprecated and removed in GKE 1.24.) `KUBELET` and `CADVISOR` are only supported in GKE 1.29.3-gke.1093000 and above. `JOBSET` is only supported in GKE 1.32.1-gke.1357001 and above.
  /// [managedPrometheus] Configuration for Managed Service for Prometheus. Structure is documented below.
  const ClusterMonitoringConfig({
    this.advancedDatapathObservabilityConfig,
    this.enableComponents,
    this.managedPrometheus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterMonitoringConfigAdvancedDatapathObservabilityConfig, Map<String, dynamic>>(advancedDatapathObservabilityConfig, (value) => value.toMap()),
      'enableComponents': ?enableComponents,
      'managedPrometheus': ?pulumi.Input.mapOptionalInputValue<ClusterMonitoringConfigManagedPrometheus, Map<String, dynamic>>(managedPrometheus, (value) => value.toMap()),
    };
  }

  factory ClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMonitoringConfig(
      advancedDatapathObservabilityConfig: (() { final guardedValue = map['advancedDatapathObservabilityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMonitoringConfigAdvancedDatapathObservabilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableComponents: (() { final guardedValue = map['enableComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      managedPrometheus: (() { final guardedValue = map['managedPrometheus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMonitoringConfigManagedPrometheus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
