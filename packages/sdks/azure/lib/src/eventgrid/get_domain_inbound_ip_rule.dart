// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainInboundIpRule {
  /// The action to take when the rule is matched. Possible values are `Allow`.
  final pulumi.Input<String> action;
  /// The IP mask (CIDR) to match on.
  final pulumi.Input<String> ipMask;

  /// Creates a new [GetDomainInboundIpRule].
  /// [action] The action to take when the rule is matched. Possible values are `Allow`.
  /// [ipMask] The IP mask (CIDR) to match on.
  const GetDomainInboundIpRule({
    required this.action,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'ipMask': ipMask,
    };
  }

  factory GetDomainInboundIpRule.fromMap(Map<String, dynamic> map) {
    return GetDomainInboundIpRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      ipMask: pulumi.Input.fromValue(map['ipMask'] as String),
    );
  }
}
