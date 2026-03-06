// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_node_balancer_node_get_node_balancer_node_args_doc}
/// Arguments for getNodeBalancerNode.
/// {@endtemplate}
/// {@macro pulumi_index_get_node_balancer_node_get_node_balancer_node_args_doc}
class GetNodeBalancerNodeArgs {
  /// The ID of the config that contains the Node.
  final pulumi.Input<int> configId;
  /// The node's ID.
  final pulumi.Input<int> id;
  /// The ID of the NodeBalancer that contains the node.
  final pulumi.Input<int> nodebalancerId;

  /// Creates a new [GetNodeBalancerNodeArgs].
  /// [configId] The ID of the config that contains the Node.
  /// [id] The node's ID.
  /// [nodebalancerId] The ID of the NodeBalancer that contains the node.
  const GetNodeBalancerNodeArgs({
    required this.configId,
    required this.id,
    required this.nodebalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'id': id,
      'nodebalancerId': nodebalancerId,
    };
  }

  factory GetNodeBalancerNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerNodeArgs(
      configId: pulumi.Input.fromValue(map['configId'] as int),
      id: pulumi.Input.fromValue(map['id'] as int),
      nodebalancerId: pulumi.Input.fromValue(map['nodebalancerId'] as int),
    );
  }
}

