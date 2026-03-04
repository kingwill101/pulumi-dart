// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_node_balancer_get_node_balancer_args_doc}
/// Arguments for getNodeBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_get_node_balancer_get_node_balancer_args_doc}
class GetNodeBalancerArgs {
  /// The NodeBalancer's ID.
  final pulumi.Input<int> id;

  /// Creates a new [GetNodeBalancerArgs].
  /// [id] The NodeBalancer's ID.
  GetNodeBalancerArgs({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GetNodeBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerArgs(id: pulumi.Input.fromValue(map['id'] as int));
  }
}
