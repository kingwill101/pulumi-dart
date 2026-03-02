// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config.dart';

class WorkflowTemplatePlacementManagedCluster {
  /// Required. The cluster name prefix. A unique cluster name will be formed by appending a random suffix. The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
  final pulumi.Input<String> clusterName;
  /// Required. The cluster configuration.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfig> config;
  /// The labels to associate with this cluster. Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: {0,63} No more than 32 labels can be associated with a given cluster.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [WorkflowTemplatePlacementManagedCluster].
  /// [clusterName] Required. The cluster name prefix. A unique cluster name will be formed by appending a random suffix. The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
  /// [config] Required. The cluster configuration.
  /// [labels] The labels to associate with this cluster. Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: {0,63} No more than 32 labels can be associated with a given cluster.
  WorkflowTemplatePlacementManagedCluster({
    required this.clusterName,
    required this.config,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'config': pulumi.Input.mapInputValue<WorkflowTemplatePlacementManagedClusterConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory WorkflowTemplatePlacementManagedCluster.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedCluster(
      clusterName: (map['clusterName'] as String).input(),
      config: (WorkflowTemplatePlacementManagedClusterConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
    );
  }
}

