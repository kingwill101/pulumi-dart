// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_cluster_selector.dart';
import 'workflow_template_placement_managed_cluster.dart';

class WorkflowTemplatePlacement {
  /// A selector that chooses target cluster for jobs based on metadata. The selector is evaluated at the time each job is submitted.
  final pulumi.Input<WorkflowTemplatePlacementClusterSelector>? clusterSelector;
  /// A cluster that is managed by the workflow.
  final pulumi.Input<WorkflowTemplatePlacementManagedCluster>? managedCluster;

  /// Creates a new [WorkflowTemplatePlacement].
  /// [clusterSelector] A selector that chooses target cluster for jobs based on metadata. The selector is evaluated at the time each job is submitted.
  /// [managedCluster] A cluster that is managed by the workflow.
  WorkflowTemplatePlacement({
    this.clusterSelector,
    this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementClusterSelector, Map<String, dynamic>>(clusterSelector, (value) => value.toMap()),
      'managedCluster': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedCluster, Map<String, dynamic>>(managedCluster, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacement.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacement(
      clusterSelector: map['clusterSelector'] == null ? null : (WorkflowTemplatePlacementClusterSelector.fromMap((map['clusterSelector']! as Map).cast<String, dynamic>())).input(),
      managedCluster: map['managedCluster'] == null ? null : (WorkflowTemplatePlacementManagedCluster.fromMap((map['managedCluster']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

