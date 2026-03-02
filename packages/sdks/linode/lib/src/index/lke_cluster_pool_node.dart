// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LkeClusterPoolNode {
  /// The ID of the node.
  final pulumi.Input<String>? id;
  /// The ID of the underlying Linode instance.
  final pulumi.Input<int>? instanceId;
  /// The status of the node. (`ready`, `not_ready`)
  final pulumi.Input<String>? status;

  /// Creates a new [LkeClusterPoolNode].
  /// [id] The ID of the node.
  /// [instanceId] The ID of the underlying Linode instance.
  /// [status] The status of the node. (`ready`, `not_ready`)
  LkeClusterPoolNode({
    this.id,
    this.instanceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory LkeClusterPoolNode.fromMap(Map<String, dynamic> map) {
    return LkeClusterPoolNode(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

