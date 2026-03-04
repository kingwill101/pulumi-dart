// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget {
  /// A namespace within the GKE cluster to deploy into.
  final pulumi.Input<String>? clusterNamespace;

  /// The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String>? targetGkeCluster;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget].
  /// [clusterNamespace] A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget({
    this.clusterNamespace,
    this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': ?clusterNamespace,
      'targetGkeCluster': ?targetGkeCluster,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget(
      clusterNamespace: (() {
        final guardedValue = map['clusterNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetGkeCluster: (() {
        final guardedValue = map['targetGkeCluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
