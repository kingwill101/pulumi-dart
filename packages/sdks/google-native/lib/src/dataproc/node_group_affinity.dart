// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node Group Affinity for clusters using sole-tenant node groups. The Dataproc NodeGroupAffinity resource is not related to the Dataproc NodeGroup resource.
class NodeGroupAffinity {
  /// The URI of a sole-tenant node group resource (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/nodeGroups/node-group-1 projects/[project_id]/zones/[zone]/nodeGroups/node-group-1 node-group-1
  final pulumi.Input<String> nodeGroupUri;

  /// Creates a new [NodeGroupAffinity].
  /// [nodeGroupUri] The URI of a sole-tenant node group resource (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/nodeGroups/node-group-1 projects/[project_id]/zones/[zone]/nodeGroups/node-group-1 node-group-1
  NodeGroupAffinity({required this.nodeGroupUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeGroupUri': nodeGroupUri};
  }

  factory NodeGroupAffinity.fromMap(Map<String, dynamic> map) {
    return NodeGroupAffinity(
      nodeGroupUri: pulumi.Input.fromValue(map['nodeGroupUri'] as String),
    );
  }
}
