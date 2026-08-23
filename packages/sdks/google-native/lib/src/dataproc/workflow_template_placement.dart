// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_selector.dart';
import 'managed_cluster.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacement {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final pulumi.Input<ClusterSelector>? clusterSelector;
  /// A cluster that is managed by the workflow.
  final pulumi.Input<ManagedCluster>? managedCluster;

  /// Creates a new [WorkflowTemplatePlacement].
  /// [clusterSelector] Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  /// [managedCluster] A cluster that is managed by the workflow.
  const WorkflowTemplatePlacement({
    this.clusterSelector,
    this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': ?pulumi.Input.mapOptionalInputValue<ClusterSelector, Map<String, dynamic>>(clusterSelector, (value) => value.toMap()),
      'managedCluster': ?pulumi.Input.mapOptionalInputValue<ManagedCluster, Map<String, dynamic>>(managedCluster, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacement.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacement(
      clusterSelector: (() { final guardedValue = map['clusterSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedCluster: (() { final guardedValue = map['managedCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
