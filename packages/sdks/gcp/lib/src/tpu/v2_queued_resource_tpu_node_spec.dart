// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_queued_resource_tpu_node_spec_node.dart';

class V2QueuedResourceTpuNodeSpec {
  /// The node.
  /// Structure is documented below.
  final pulumi.Input<V2QueuedResourceTpuNodeSpecNode> node;
  /// Unqualified node identifier used to identify the node in the project once provisioned.
  final pulumi.Input<String>? nodeId;
  /// The parent resource name.
  final pulumi.Input<String> parent;

  /// Creates a new [V2QueuedResourceTpuNodeSpec].
  /// [node] The node.
  /// [nodeId] Unqualified node identifier used to identify the node in the project once provisioned.
  /// [parent] The parent resource name.
  V2QueuedResourceTpuNodeSpec({
    required this.node,
    this.nodeId,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'node': pulumi.Input.mapInputValue<V2QueuedResourceTpuNodeSpecNode, Map<String, dynamic>>(node, (value) => value.toMap()),
      'nodeId': ?nodeId,
      'parent': parent,
    };
  }

  factory V2QueuedResourceTpuNodeSpec.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceTpuNodeSpec(
      node: (V2QueuedResourceTpuNodeSpecNode.fromMap((map['node'] as Map).cast<String, dynamic>())).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      parent: (map['parent'] as String).input(),
    );
  }
}

