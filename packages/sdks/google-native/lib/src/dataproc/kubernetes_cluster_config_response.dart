// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_cluster_config_response.dart';
import 'kubernetes_software_config_response.dart';

/// The configuration for running the Dataproc cluster on Kubernetes.
class KubernetesClusterConfigResponse {
  /// The configuration for running the Dataproc cluster on GKE.
  final pulumi.Input<GkeClusterConfigResponse> gkeClusterConfig;
  /// Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  final pulumi.Input<String> kubernetesNamespace;
  /// Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  final pulumi.Input<KubernetesSoftwareConfigResponse> kubernetesSoftwareConfig;

  /// Creates a new [KubernetesClusterConfigResponse].
  /// [gkeClusterConfig] The configuration for running the Dataproc cluster on GKE.
  /// [kubernetesNamespace] Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  /// [kubernetesSoftwareConfig] Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  KubernetesClusterConfigResponse({
    required this.gkeClusterConfig,
    required this.kubernetesNamespace,
    required this.kubernetesSoftwareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterConfig': pulumi.Input.mapInputValue<GkeClusterConfigResponse, Map<String, dynamic>>(gkeClusterConfig, (value) => value.toMap()),
      'kubernetesNamespace': kubernetesNamespace,
      'kubernetesSoftwareConfig': pulumi.Input.mapInputValue<KubernetesSoftwareConfigResponse, Map<String, dynamic>>(kubernetesSoftwareConfig, (value) => value.toMap()),
    };
  }

  factory KubernetesClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterConfigResponse(
      gkeClusterConfig: (GkeClusterConfigResponse.fromMap((map['gkeClusterConfig'] as Map).cast<String, dynamic>())).input(),
      kubernetesNamespace: (map['kubernetesNamespace'] as String).input(),
      kubernetesSoftwareConfig: (KubernetesSoftwareConfigResponse.fromMap((map['kubernetesSoftwareConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

