// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPartnerNamespaceInboundIpRule {
  /// The action to take when the rule is matched.
  final pulumi.Input<String> action;
  /// The IP mask (CIDR) to match on.
  final pulumi.Input<String> ipMask;

  /// Creates a new [GetPartnerNamespaceInboundIpRule].
  /// [action] The action to take when the rule is matched.
  /// [ipMask] The IP mask (CIDR) to match on.
  GetPartnerNamespaceInboundIpRule({
    required this.action,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'ipMask': ipMask,
    };
  }

  factory GetPartnerNamespaceInboundIpRule.fromMap(Map<String, dynamic> map) {
    return GetPartnerNamespaceInboundIpRule(
      action: (map['action'] as String).input(),
      ipMask: (map['ipMask'] as String).input(),
    );
  }
}

