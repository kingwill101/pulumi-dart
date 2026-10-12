// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_tracing_rules_rule_action_parameters.dart';

class GetZoneTracingRulesRule {
  /// Available values: "set*trace*settings".
  final pulumi.Input<String> action;
  final pulumi.Input<GetZoneTracingRulesRuleActionParameters> actionParameters;
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  /// A Rules language expression that selects requests.
  final pulumi.Input<String> expression;

  /// Creates a new [GetZoneTracingRulesRule].
  /// [action] Available values: "set*trace*settings".
  /// [actionParameters] Required.
  /// [description] Required.
  /// [enabled] Required.
  /// [expression] A Rules language expression that selects requests.
  const GetZoneTracingRulesRule({
    required this.action,
    required this.actionParameters,
    required this.description,
    required this.enabled,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'actionParameters': pulumi.Input.mapInputValue<GetZoneTracingRulesRuleActionParameters, Map<String, dynamic>>(actionParameters, (value) => value.toMap()),
      'description': description,
      'enabled': enabled,
      'expression': expression,
    };
  }

  factory GetZoneTracingRulesRule.fromMap(Map<String, dynamic> map) {
    return GetZoneTracingRulesRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      actionParameters: pulumi.Input.fromValue(GetZoneTracingRulesRuleActionParameters.fromMap((map['actionParameters']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
