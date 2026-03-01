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
  GetNodeBalancerNodeArgs({
    required pulumi.Output<int> configId,
    required pulumi.Output<int> id,
    required pulumi.Output<int> nodebalancerId,
  }) :
      configId = pulumi.Input.asInput<int>(configId),
      id = pulumi.Input.asInput<int>(id),
      nodebalancerId = pulumi.Input.asInput<int>(nodebalancerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'id': id,
      'nodebalancerId': nodebalancerId,
    };
  }

  factory GetNodeBalancerNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerNodeArgs(
      configId: pulumi.Output.create<int>(map['configId'] as int),
      id: pulumi.Output.create<int>(map['id'] as int),
      nodebalancerId: pulumi.Output.create<int>(map['nodebalancerId'] as int),
    );
  }
}

