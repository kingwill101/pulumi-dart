// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity {
  /// Required. The URI of a sole-tenant /zones/us-central1-a/nodeGroups/node-group-1` * `node-group-1`
  final pulumi.Input<String> nodeGroup;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity].
  /// [nodeGroup] Required. The URI of a sole-tenant /zones/us-central1-a/nodeGroups/node-group-1` * `node-group-1`
  WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity({
    required this.nodeGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroup': nodeGroup,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity(
      nodeGroup: (map['nodeGroup'] as String).input(),
    );
  }
}

