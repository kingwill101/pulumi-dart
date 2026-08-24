// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_result_rule_fixed_response.dart';
import 'get_load_balancers_result_rule_overrides.dart';

class GetLoadBalancersResultRule {
  /// The condition expressions to evaluate. If the condition evaluates to true, the overrides or fixedResponse in this rule will be applied. An empty condition is always true. For more details on condition expressions, please see https://developers.cloudflare.com/load-balancing/understand-basics/load-balancing-rules/expressions.
  final pulumi.Input<String> condition;
  /// Disable this specific rule. It will no longer be evaluated by this load balancer.
  final pulumi.Input<bool> disabled;
  /// A collection of fields used to directly respond to the eyeball instead of routing to a pool. If a fixed*response is supplied the rule will be marked as terminates.
  final pulumi.Input<GetLoadBalancersResultRuleFixedResponse> fixedResponse;
  /// Name of this rule. Only used for human readability.
  final pulumi.Input<String> name;
  /// A collection of overrides to apply to the load balancer when this rule's condition is true. All fields are optional.
  final pulumi.Input<GetLoadBalancersResultRuleOverrides> overrides;
  /// The order in which rules should be executed in relation to each other. Lower values are executed first. Values do not need to be sequential. If no value is provided for any rule the array order of the rules field will be used to assign a priority.
  final pulumi.Input<int> priority;
  /// If this rule's condition is true, this causes rule evaluation to stop after processing this rule.
  final pulumi.Input<bool> terminates;

  /// Creates a new [GetLoadBalancersResultRule].
  /// [condition] The condition expressions to evaluate. If the condition evaluates to true, the overrides or fixedResponse in this rule will be applied. An empty condition is always true. For more details on condition expressions, please see https://developers.cloudflare.com/load-balancing/understand-basics/load-balancing-rules/expressions.
  /// [disabled] Disable this specific rule. It will no longer be evaluated by this load balancer.
  /// [fixedResponse] A collection of fields used to directly respond to the eyeball instead of routing to a pool. If a fixed*response is supplied the rule will be marked as terminates.
  /// [name] Name of this rule. Only used for human readability.
  /// [overrides] A collection of overrides to apply to the load balancer when this rule's condition is true. All fields are optional.
  /// [priority] The order in which rules should be executed in relation to each other. Lower values are executed first. Values do not need to be sequential. If no value is provided for any rule the array order of the rules field will be used to assign a priority.
  /// [terminates] If this rule's condition is true, this causes rule evaluation to stop after processing this rule.
  const GetLoadBalancersResultRule({
    required this.condition,
    required this.disabled,
    required this.fixedResponse,
    required this.name,
    required this.overrides,
    required this.priority,
    required this.terminates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'disabled': disabled,
      'fixedResponse': pulumi.Input.mapInputValue<GetLoadBalancersResultRuleFixedResponse, Map<String, dynamic>>(fixedResponse, (value) => value.toMap()),
      'name': name,
      'overrides': pulumi.Input.mapInputValue<GetLoadBalancersResultRuleOverrides, Map<String, dynamic>>(overrides, (value) => value.toMap()),
      'priority': priority,
      'terminates': terminates,
    };
  }

  factory GetLoadBalancersResultRule.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResultRule(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      fixedResponse: pulumi.Input.fromValue(GetLoadBalancersResultRuleFixedResponse.fromMap((map['fixedResponse']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      overrides: pulumi.Input.fromValue(GetLoadBalancersResultRuleOverrides.fromMap((map['overrides']! as Map).cast<String, dynamic>())),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      terminates: pulumi.Input.fromValue(map['terminates'] as bool),
    );
  }
}
