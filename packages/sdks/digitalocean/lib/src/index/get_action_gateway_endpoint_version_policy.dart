// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_endpoint_version_policy_rule.dart';

class GetActionGatewayEndpointVersionPolicy {
  /// Action for calls no rule matches: allow, ask, or deny. Empty means ask.
  final pulumi.Input<String> defaultAction;
  /// Rules for specific tools and toolbelts, in the order the configuration lists them
  final pulumi.Input<List<GetActionGatewayEndpointVersionPolicyRule>> rules;

  /// Creates a new [GetActionGatewayEndpointVersionPolicy].
  /// [defaultAction] Action for calls no rule matches: allow, ask, or deny. Empty means ask.
  /// [rules] Rules for specific tools and toolbelts, in the order the configuration lists them
  const GetActionGatewayEndpointVersionPolicy({
    required this.defaultAction,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'rules': pulumi.Input.mapInputValue<List<GetActionGatewayEndpointVersionPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetActionGatewayEndpointVersionPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetActionGatewayEndpointVersionPolicy.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayEndpointVersionPolicy(
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGatewayEndpointVersionPolicyRule>(map['rules']!, (value) => GetActionGatewayEndpointVersionPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
