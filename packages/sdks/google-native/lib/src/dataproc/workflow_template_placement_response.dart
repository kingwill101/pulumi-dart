// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_selector_response.dart';
import 'managed_cluster_response.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacementResponse {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final pulumi.Input<ClusterSelectorResponse> clusterSelector;
  /// A cluster that is managed by the workflow.
  final pulumi.Input<ManagedClusterResponse> managedCluster;

  /// Creates a new [WorkflowTemplatePlacementResponse].
  /// [clusterSelector] Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  /// [managedCluster] A cluster that is managed by the workflow.
  WorkflowTemplatePlacementResponse({
    required this.clusterSelector,
    required this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': pulumi.Input.mapInputValue<ClusterSelectorResponse, Map<String, dynamic>>(clusterSelector, (value) => value.toMap()),
      'managedCluster': pulumi.Input.mapInputValue<ManagedClusterResponse, Map<String, dynamic>>(managedCluster, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacementResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementResponse(
      clusterSelector: pulumi.Input.fromValue(ClusterSelectorResponse.fromMap((map['clusterSelector']! as Map).cast<String, dynamic>())),
      managedCluster: pulumi.Input.fromValue(ManagedClusterResponse.fromMap((map['managedCluster']! as Map).cast<String, dynamic>())),
    );
  }
}

