// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNodePoolNode {
  /// The date and time when the node was created.
  final pulumi.Input<String>? createdAt;
  /// The id of the node's droplet
  final pulumi.Input<String>? dropletId;
  /// A unique ID that can be used to identify and reference the node.
  final pulumi.Input<String>? id;
  /// A name for the Kubernetes cluster.
  final pulumi.Input<String>? name;
  /// A string indicating the current status of the individual node.
  final pulumi.Input<String>? status;
  /// The date and time when the node was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [KubernetesClusterNodePoolNode].
  /// [createdAt] The date and time when the node was created.
  /// [dropletId] The id of the node's droplet
  /// [id] A unique ID that can be used to identify and reference the node.
  /// [name] A name for the Kubernetes cluster.
  /// [status] A string indicating the current status of the individual node.
  /// [updatedAt] The date and time when the node was last updated.
  KubernetesClusterNodePoolNode({
    this.createdAt,
    this.dropletId,
    this.id,
    this.name,
    this.status,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'dropletId': ?dropletId,
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory KubernetesClusterNodePoolNode.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolNode(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      dropletId: map['dropletId'] == null ? null : (map['dropletId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

