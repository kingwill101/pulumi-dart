// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_selector_dataproc_v1beta2.dart';
import 'managed_cluster_dataproc_v1beta2.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacementDataprocV1beta2 {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final pulumi.Input<ClusterSelectorDataprocV1beta2>? clusterSelector;
  /// Optional. A cluster that is managed by the workflow.
  final pulumi.Input<ManagedClusterDataprocV1beta2>? managedCluster;

  /// Creates a new [WorkflowTemplatePlacementDataprocV1beta2].
  /// [clusterSelector] Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  /// [managedCluster] Optional. A cluster that is managed by the workflow.
  WorkflowTemplatePlacementDataprocV1beta2({
    this.clusterSelector,
    this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': ?pulumi.Input.mapOptionalInputValue<ClusterSelectorDataprocV1beta2, Map<String, dynamic>>(clusterSelector, (value) => value.toMap()),
      'managedCluster': ?pulumi.Input.mapOptionalInputValue<ManagedClusterDataprocV1beta2, Map<String, dynamic>>(managedCluster, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacementDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementDataprocV1beta2(
      clusterSelector: map['clusterSelector'] == null ? null : (ClusterSelectorDataprocV1beta2.fromMap((map['clusterSelector']! as Map).cast<String, dynamic>())).input(),
      managedCluster: map['managedCluster'] == null ? null : (ManagedClusterDataprocV1beta2.fromMap((map['managedCluster']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

