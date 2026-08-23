// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_lbrule_get_lbrule_args_doc}
/// Arguments for getLBRule.
/// {@endtemplate}
/// {@macro pulumi_lb_get_lbrule_get_lbrule_args_doc}
class GetLBRuleArgs {
  /// The ID of the Load Balancer Rule.
  final pulumi.Input<String> loadbalancerId;
  /// The name of this Load Balancer Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetLBRuleArgs].
  /// [loadbalancerId] The ID of the Load Balancer Rule.
  /// [name] The name of this Load Balancer Rule.
  const GetLBRuleArgs({
    required this.loadbalancerId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadbalancerId': loadbalancerId,
      'name': name,
    };
  }

  factory GetLBRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetLBRuleArgs(
      loadbalancerId: pulumi.Input.fromValue(map['loadbalancerId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
