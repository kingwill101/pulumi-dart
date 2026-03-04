// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_node_balancer_config_get_node_balancer_config_args_doc}
/// Arguments for getNodeBalancerConfig.
/// {@endtemplate}
/// {@macro pulumi_index_get_node_balancer_config_get_node_balancer_config_args_doc}
class GetNodeBalancerConfigArgs {
  /// The config's ID.
  final pulumi.Input<int> id;

  /// The ID of the NodeBalancer that contains the config.
  final pulumi.Input<int> nodebalancerId;

  /// Creates a new [GetNodeBalancerConfigArgs].
  /// [id] The config's ID.
  /// [nodebalancerId] The ID of the NodeBalancer that contains the config.
  GetNodeBalancerConfigArgs({required this.id, required this.nodebalancerId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'nodebalancerId': nodebalancerId};
  }

  factory GetNodeBalancerConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerConfigArgs(
      id: pulumi.Input.fromValue(map['id'] as int),
      nodebalancerId: pulumi.Input.fromValue(map['nodebalancerId'] as int),
    );
  }
}
