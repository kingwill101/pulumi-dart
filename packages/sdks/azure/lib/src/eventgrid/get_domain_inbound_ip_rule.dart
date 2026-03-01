// ignore_for_file: unused_element, unnecessary_cast


class GetDomainInboundIpRule {
  /// The action to take when the rule is matched. Possible values are `Allow`.
  final String action;
  /// The IP mask (CIDR) to match on.
  final String ipMask;

  /// Creates a new [GetDomainInboundIpRule].
  /// [action] The action to take when the rule is matched. Possible values are `Allow`.
  /// [ipMask] The IP mask (CIDR) to match on.
  GetDomainInboundIpRule({
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
      action: map['action'] as String,
      ipMask: map['ipMask'] as String,
    );
  }
}

