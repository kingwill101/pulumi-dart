// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LkeNodePoolNode {
  /// The ID of the node.
  final pulumi.Input<String> id;
  /// The ID of the underlying Linode instance.
  final pulumi.Input<int> instanceId;
  /// The status of the node. (`ready`, `not_ready`)
  final pulumi.Input<String> status;

  /// Creates a new [LkeNodePoolNode].
  /// [id] The ID of the node.
  /// [instanceId] The ID of the underlying Linode instance.
  /// [status] The status of the node. (`ready`, `not_ready`)
  const LkeNodePoolNode({
    required this.id,
    required this.instanceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceId': instanceId,
      'status': status,
    };
  }

  factory LkeNodePoolNode.fromMap(Map<String, dynamic> map) {
    return LkeNodePoolNode(
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

