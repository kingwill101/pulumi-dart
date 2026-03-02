// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterNodePoolNode {
  /// The date and time when the node was created.
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> dropletId;
  /// A unique ID that can be used to identify and reference the node.
  final pulumi.Input<String> id;
  /// The name of Kubernetes cluster.
  final pulumi.Input<String> name;
  /// A string indicating the current status of the individual node.
  final pulumi.Input<String> status;
  /// The date and time when the node was last updated.
  final pulumi.Input<String> updatedAt;

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
      createdAt: (map['createdAt'] as String).input(),
      dropletId: (map['dropletId'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
    );
  }
}

