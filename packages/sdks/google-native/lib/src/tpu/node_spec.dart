// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_node_params.dart';
import 'node.dart';

/// Details of the TPU node(s) being requested. Users can request either a single node or multiple nodes. NodeSpec provides the specification for node(s) to be created.
class NodeSpec {
  /// Optional. Fields to specify in case of multi-node request.
  final pulumi.Input<MultiNodeParams>? multiNodeParams;
  /// The node.
  final pulumi.Input<Node> node;
  /// The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. This is only specified when requesting a single node. In case of multi-node requests, multi_node_params must be populated instead. It's an error to specify both node_id and multi_node_params.
  final pulumi.Input<String>? nodeId;
  /// The parent resource name.
  final pulumi.Input<String> parent;

  /// Creates a new [NodeSpec].
  /// [multiNodeParams] Optional. Fields to specify in case of multi-node request.
  /// [node] The node.
  /// [nodeId] The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. This is only specified when requesting a single node. In case of multi-node requests, multi_node_params must be populated instead. It's an error to specify both node_id and multi_node_params.
  /// [parent] The parent resource name.
  NodeSpec({
    this.multiNodeParams,
    required this.node,
    this.nodeId,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiNodeParams': ?pulumi.Input.mapOptionalInputValue<MultiNodeParams, Map<String, dynamic>>(multiNodeParams, (value) => value.toMap()),
      'node': pulumi.Input.mapInputValue<Node, Map<String, dynamic>>(node, (value) => value.toMap()),
      'nodeId': ?nodeId,
      'parent': parent,
    };
  }

  factory NodeSpec.fromMap(Map<String, dynamic> map) {
    return NodeSpec(
      multiNodeParams: (() { final guardedValue = map['multiNodeParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiNodeParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      node: pulumi.Input.fromValue(Node.fromMap((map['node']! as Map).cast<String, dynamic>())),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

