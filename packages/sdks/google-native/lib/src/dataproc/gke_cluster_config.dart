// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_pool_target.dart';
import 'namespaced_gke_deployment_target.dart';

/// The cluster's GKE config.
class GkeClusterConfig {
  /// Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String>? gkeClusterTarget;
  /// Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  final pulumi.Input<NamespacedGkeDeploymentTarget>? namespacedGkeDeploymentTarget;
  /// Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  final pulumi.Input<List<GkeNodePoolTarget>>? nodePoolTarget;

  /// Creates a new [GkeClusterConfig].
  /// [gkeClusterTarget] Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  /// [namespacedGkeDeploymentTarget] Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  /// [nodePoolTarget] Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  GkeClusterConfig({
    this.gkeClusterTarget,
    this.namespacedGkeDeploymentTarget,
    this.nodePoolTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterTarget': ?gkeClusterTarget,
      'namespacedGkeDeploymentTarget': ?pulumi.Input.mapOptionalInputValue<NamespacedGkeDeploymentTarget, Map<String, dynamic>>(namespacedGkeDeploymentTarget, (value) => value.toMap()),
      'nodePoolTarget': ?pulumi.Input.mapOptionalInputValue<List<GkeNodePoolTarget>, List<Map<String, dynamic>>>(nodePoolTarget, (value) => pulumi.Input.encodeList<GkeNodePoolTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GkeClusterConfig.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfig(
      gkeClusterTarget: (() { final guardedValue = map['gkeClusterTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespacedGkeDeploymentTarget: (() { final guardedValue = map['namespacedGkeDeploymentTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamespacedGkeDeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePoolTarget: (() { final guardedValue = map['nodePoolTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GkeNodePoolTarget>(guardedValue, (value) => GkeNodePoolTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

