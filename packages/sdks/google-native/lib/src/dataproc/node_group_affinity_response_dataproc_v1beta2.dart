// ignore_for_file: unused_element, unnecessary_cast


/// Node Group Affinity for clusters using sole-tenant node groups.
class NodeGroupAffinityResponseDataprocV1beta2 {
  /// The URI of a sole-tenant node group resource (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 node-group-1
  final String nodeGroupUri;

  /// Creates a new [NodeGroupAffinityResponseDataprocV1beta2].
  /// [nodeGroupUri] The URI of a sole-tenant node group resource (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 node-group-1
  NodeGroupAffinityResponseDataprocV1beta2({
    required this.nodeGroupUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroupUri': nodeGroupUri,
    };
  }

  factory NodeGroupAffinityResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return NodeGroupAffinityResponseDataprocV1beta2(
      nodeGroupUri: map['nodeGroupUri'] as String,
    );
  }
}

