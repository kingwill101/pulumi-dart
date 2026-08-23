// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_pool_target_response.dart';
import 'namespaced_gke_deployment_target_response.dart';

/// The cluster's GKE config.
class GkeClusterConfigResponse {
  /// Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String> gkeClusterTarget;
  /// Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  final pulumi.Input<NamespacedGkeDeploymentTargetResponse> namespacedGkeDeploymentTarget;
  /// Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  final pulumi.Input<List<GkeNodePoolTargetResponse>> nodePoolTarget;

  /// Creates a new [GkeClusterConfigResponse].
  /// [gkeClusterTarget] Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  /// [namespacedGkeDeploymentTarget] Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  /// [nodePoolTarget] Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  const GkeClusterConfigResponse({
    required this.gkeClusterTarget,
    required this.namespacedGkeDeploymentTarget,
    required this.nodePoolTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterTarget': gkeClusterTarget,
      'namespacedGkeDeploymentTarget': pulumi.Input.mapInputValue<NamespacedGkeDeploymentTargetResponse, Map<String, dynamic>>(namespacedGkeDeploymentTarget, (value) => value.toMap()),
      'nodePoolTarget': pulumi.Input.mapInputValue<List<GkeNodePoolTargetResponse>, List<Map<String, dynamic>>>(nodePoolTarget, (value) => pulumi.Input.encodeList<GkeNodePoolTargetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GkeClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfigResponse(
      gkeClusterTarget: pulumi.Input.fromValue(map['gkeClusterTarget'] as String),
      namespacedGkeDeploymentTarget: pulumi.Input.fromValue(NamespacedGkeDeploymentTargetResponse.fromMap((map['namespacedGkeDeploymentTarget']! as Map).cast<String, dynamic>())),
      nodePoolTarget: pulumi.Input.fromValue(pulumi.Input.decodeList<GkeNodePoolTargetResponse>(map['nodePoolTarget']!, (value) => GkeNodePoolTargetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
