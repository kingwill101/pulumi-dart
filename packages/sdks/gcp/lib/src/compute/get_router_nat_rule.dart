// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_nat_rule_action.dart';

class GetRouterNatRule {
  /// The action to be enforced for traffic that matches this rule.
  final pulumi.Input<List<GetRouterNatRuleAction>> actions;
  /// An optional description of this rule.
  final pulumi.Input<String> description;
  /// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
  /// If it evaluates to true, the corresponding action is enforced.
  ///
  /// The following examples are valid match expressions for public NAT:
  ///
  /// "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')"
  ///
  /// "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'"
  ///
  /// The following example is a valid match expression for private NAT:
  ///
  /// "nexthop.hub == 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1'"
  final pulumi.Input<String> match;
  /// An integer uniquely identifying a rule in the list.
  /// The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  final pulumi.Input<int> ruleNumber;

  /// Creates a new [GetRouterNatRule].
  /// [actions] The action to be enforced for traffic that matches this rule.
  /// [description] An optional description of this rule.
  /// [match] CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
  /// [ruleNumber] An integer uniquely identifying a rule in the list.
  const GetRouterNatRule({
    required this.actions,
    required this.description,
    required this.match,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetRouterNatRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetRouterNatRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'match': match,
      'ruleNumber': ruleNumber,
    };
  }

  factory GetRouterNatRule.fromMap(Map<String, dynamic> map) {
    return GetRouterNatRule(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouterNatRuleAction>(map['actions']!, (value) => GetRouterNatRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      match: pulumi.Input.fromValue(map['match'] as String),
      ruleNumber: pulumi.Input.fromValue(map['ruleNumber'] as int),
    );
  }
}

