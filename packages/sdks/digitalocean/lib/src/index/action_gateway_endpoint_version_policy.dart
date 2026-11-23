// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_endpoint_version_policy_rule.dart';

class ActionGatewayEndpointVersionPolicy {
  /// The action for calls that no rule matches: `allow`, `ask`, or `deny`. Empty means `ask`.
  final pulumi.Input<String?>? defaultAction;
  /// Rules for specific tools and toolbelts, in the order the configuration lists them. Each rule supports:
  final pulumi.Input<List<ActionGatewayEndpointVersionPolicyRule>?>? rules;

  /// Creates a new [ActionGatewayEndpointVersionPolicy].
  /// [defaultAction] The action for calls that no rule matches: `allow`, `ask`, or `deny`. Empty means `ask`.
  /// [rules] Rules for specific tools and toolbelts, in the order the configuration lists them. Each rule supports:
  const ActionGatewayEndpointVersionPolicy({
    this.defaultAction,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ActionGatewayEndpointVersionPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ActionGatewayEndpointVersionPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActionGatewayEndpointVersionPolicy.fromMap(Map<String, dynamic> map) {
    return ActionGatewayEndpointVersionPolicy(
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActionGatewayEndpointVersionPolicyRule>(guardedValue, (value) => ActionGatewayEndpointVersionPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
