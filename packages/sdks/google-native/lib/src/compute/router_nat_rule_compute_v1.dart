// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_rule_action_compute_v1.dart';

class RouterNatRuleComputeV1 {
  /// The action to be enforced for traffic that matches this rule.
  final pulumi.Input<RouterNatRuleActionComputeV1>? action;
  /// An optional description of this rule.
  final pulumi.Input<String>? description;
  /// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against. If it evaluates to true, the corresponding `action` is enforced. The following examples are valid match expressions for public NAT: "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')" "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'" The following example is a valid match expression for private NAT: "nexthop.hub == '//networkconnectivity.googleapis.com/projects/my-project/locations/global/hubs/hub-1'"
  final pulumi.Input<String>? match;
  /// An integer uniquely identifying a rule in the list. The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  final pulumi.Input<int>? ruleNumber;

  /// Creates a new [RouterNatRuleComputeV1].
  /// [action] The action to be enforced for traffic that matches this rule.
  /// [description] An optional description of this rule.
  /// [match] CEL expression that specifies the match condition that egress traffic from a VM is evaluated against. If it evaluates to true, the corresponding `action` is enforced. The following examples are valid match expressions for public NAT: "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')" "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'" The following example is a valid match expression for private NAT: "nexthop.hub == '//networkconnectivity.googleapis.com/projects/my-project/locations/global/hubs/hub-1'"
  /// [ruleNumber] An integer uniquely identifying a rule in the list. The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  RouterNatRuleComputeV1({
    this.action,
    this.description,
    this.match,
    this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RouterNatRuleActionComputeV1, Map<String, dynamic>>(action, (value) => value.toMap()),
      'description': ?description,
      'match': ?match,
      'ruleNumber': ?ruleNumber,
    };
  }

  factory RouterNatRuleComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterNatRuleComputeV1(
      action: map['action'] == null ? null : (RouterNatRuleActionComputeV1.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      match: map['match'] == null ? null : (map['match'] as String).input(),
      ruleNumber: map['ruleNumber'] == null ? null : (map['ruleNumber'] as int).input(),
    );
  }
}

