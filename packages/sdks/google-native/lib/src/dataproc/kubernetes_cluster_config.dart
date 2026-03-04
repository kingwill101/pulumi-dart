// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_cluster_config.dart';
import 'kubernetes_software_config.dart';

/// The configuration for running the Dataproc cluster on Kubernetes.
class KubernetesClusterConfig {
  /// The configuration for running the Dataproc cluster on GKE.
  final pulumi.Input<GkeClusterConfig> gkeClusterConfig;

  /// Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  final pulumi.Input<String>? kubernetesNamespace;

  /// Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  final pulumi.Input<KubernetesSoftwareConfig>? kubernetesSoftwareConfig;

  /// Creates a new [KubernetesClusterConfig].
  /// [gkeClusterConfig] The configuration for running the Dataproc cluster on GKE.
  /// [kubernetesNamespace] Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  /// [kubernetesSoftwareConfig] Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  KubernetesClusterConfig({
    required this.gkeClusterConfig,
    this.kubernetesNamespace,
    this.kubernetesSoftwareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterConfig':
          pulumi.Input.mapInputValue<GkeClusterConfig, Map<String, dynamic>>(
            gkeClusterConfig,
            (value) => value.toMap(),
          ),
      'kubernetesNamespace': ?kubernetesNamespace,
      'kubernetesSoftwareConfig':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesSoftwareConfig,
            Map<String, dynamic>
          >(kubernetesSoftwareConfig, (value) => value.toMap()),
    };
  }

  factory KubernetesClusterConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterConfig(
      gkeClusterConfig: pulumi.Input.fromValue(
        GkeClusterConfig.fromMap(
          (map['gkeClusterConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      kubernetesNamespace: (() {
        final guardedValue = map['kubernetesNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kubernetesSoftwareConfig: (() {
        final guardedValue = map['kubernetesSoftwareConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesSoftwareConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
