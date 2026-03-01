// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterNodePoolNode {
  /// The date and time when the node was created.
  final String createdAt;
  final String dropletId;
  /// A unique ID that can be used to identify and reference the node.
  final String id;
  /// The name of Kubernetes cluster.
  final String name;
  /// A string indicating the current status of the individual node.
  final String status;
  /// The date and time when the node was last updated.
  final String updatedAt;

  /// Creates a new [GetKubernetesClusterNodePoolNode].
  /// [createdAt] The date and time when the node was created.
  /// [dropletId] Required.
  /// [id] A unique ID that can be used to identify and reference the node.
  /// [name] The name of Kubernetes cluster.
  /// [status] A string indicating the current status of the individual node.
  /// [updatedAt] The date and time when the node was last updated.
  GetKubernetesClusterNodePoolNode({
    required this.createdAt,
    required this.dropletId,
    required this.id,
    required this.name,
    required this.status,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'dropletId': dropletId,
      'id': id,
      'name': name,
      'status': status,
      'updatedAt': updatedAt,
    };
  }

  factory GetKubernetesClusterNodePoolNode.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNodePoolNode(
      createdAt: map['createdAt'] as String,
      dropletId: map['dropletId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

