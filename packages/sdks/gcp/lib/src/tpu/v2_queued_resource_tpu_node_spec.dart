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
  const V2QueuedResourceTpuNodeSpec({
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
      node: pulumi.Input.fromValue(V2QueuedResourceTpuNodeSpecNode.fromMap((map['node']! as Map).cast<String, dynamic>())),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
