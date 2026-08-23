// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config.dart';
import 'cluster_virtual_cluster_config_kubernetes_cluster_config_kubernetes_software_config.dart';

class ClusterVirtualClusterConfigKubernetesClusterConfig {
  /// The configuration for running the Dataproc cluster on GKE.
  final pulumi.Input<ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig> gkeClusterConfig;
  /// A namespace within the Kubernetes cluster to deploy into.
  /// If this namespace does not exist, it is created.
  /// If it  exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it.
  /// If not specified, the name of the Dataproc Cluster is used.
  final pulumi.Input<String>? kubernetesNamespace;
  /// The software configuration for this Dataproc cluster running on Kubernetes.
  final pulumi.Input<ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig> kubernetesSoftwareConfig;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfig].
  /// [gkeClusterConfig] The configuration for running the Dataproc cluster on GKE.
  /// [kubernetesNamespace] A namespace within the Kubernetes cluster to deploy into.
  /// [kubernetesSoftwareConfig] The software configuration for this Dataproc cluster running on Kubernetes.
  const ClusterVirtualClusterConfigKubernetesClusterConfig({
    required this.gkeClusterConfig,
    this.kubernetesNamespace,
    required this.kubernetesSoftwareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterConfig': pulumi.Input.mapInputValue<ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig, Map<String, dynamic>>(gkeClusterConfig, (value) => value.toMap()),
      'kubernetesNamespace': ?kubernetesNamespace,
      'kubernetesSoftwareConfig': pulumi.Input.mapInputValue<ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig, Map<String, dynamic>>(kubernetesSoftwareConfig, (value) => value.toMap()),
    };
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfig(
      gkeClusterConfig: pulumi.Input.fromValue(ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig.fromMap((map['gkeClusterConfig']! as Map).cast<String, dynamic>())),
      kubernetesNamespace: (() { final guardedValue = map['kubernetesNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesSoftwareConfig: pulumi.Input.fromValue(ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig.fromMap((map['kubernetesSoftwareConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
