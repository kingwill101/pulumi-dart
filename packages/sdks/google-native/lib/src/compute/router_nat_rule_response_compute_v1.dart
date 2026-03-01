// ignore_for_file: unused_element, unnecessary_cast

import 'router_nat_rule_action_response_compute_v1.dart';

class RouterNatRuleResponseComputeV1 {
  /// The action to be enforced for traffic that matches this rule.
  final RouterNatRuleActionResponseComputeV1 action;
  /// An optional description of this rule.
  final String description;
  /// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against. If it evaluates to true, the corresponding `action` is enforced. The following examples are valid match expressions for public NAT: "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')" "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'" The following example is a valid match expression for private NAT: "nexthop.hub == '//networkconnectivity.googleapis.com/projects/my-project/locations/global/hubs/hub-1'"
  final String match;
  /// An integer uniquely identifying a rule in the list. The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  final int ruleNumber;

  /// Creates a new [RouterNatRuleResponseComputeV1].
  /// [action] The action to be enforced for traffic that matches this rule.
  /// [description] An optional description of this rule.
  /// [match] CEL expression that specifies the match condition that egress traffic from a VM is evaluated against. If it evaluates to true, the corresponding `action` is enforced. The following examples are valid match expressions for public NAT: "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')" "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'" The following example is a valid match expression for private NAT: "nexthop.hub == '//networkconnectivity.googleapis.com/projects/my-project/locations/global/hubs/hub-1'"
  /// [ruleNumber] An integer uniquely identifying a rule in the list. The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  RouterNatRuleResponseComputeV1({
    required this.action,
    required this.description,
    required this.match,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'description': description,
      'match': match,
      'ruleNumber': ruleNumber,
    };
  }

  factory RouterNatRuleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterNatRuleResponseComputeV1(
      action: RouterNatRuleActionResponseComputeV1.fromMap((map['action'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      match: map['match'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}

