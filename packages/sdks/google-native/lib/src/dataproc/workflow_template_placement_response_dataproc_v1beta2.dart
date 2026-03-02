// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_selector_response_dataproc_v1beta2.dart';
import 'managed_cluster_response_dataproc_v1beta2.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacementResponseDataprocV1beta2 {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final pulumi.Input<ClusterSelectorResponseDataprocV1beta2> clusterSelector;
  /// Optional. A cluster that is managed by the workflow.
  final pulumi.Input<ManagedClusterResponseDataprocV1beta2> managedCluster;

  /// Creates a new [WorkflowTemplatePlacementResponseDataprocV1beta2].
  /// [clusterSelector] Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  /// [managedCluster] Optional. A cluster that is managed by the workflow.
  WorkflowTemplatePlacementResponseDataprocV1beta2({
    required this.clusterSelector,
    required this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': pulumi.Input.mapInputValue<ClusterSelectorResponseDataprocV1beta2, Map<String, dynamic>>(clusterSelector, (value) => value.toMap()),
      'managedCluster': pulumi.Input.mapInputValue<ManagedClusterResponseDataprocV1beta2, Map<String, dynamic>>(managedCluster, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacementResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementResponseDataprocV1beta2(
      clusterSelector: (ClusterSelectorResponseDataprocV1beta2.fromMap((map['clusterSelector'] as Map).cast<String, dynamic>())).input(),
      managedCluster: (ManagedClusterResponseDataprocV1beta2.fromMap((map['managedCluster'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

