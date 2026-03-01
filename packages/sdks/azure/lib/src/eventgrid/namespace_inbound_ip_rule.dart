// ignore_for_file: unused_element, unnecessary_cast


class NamespaceInboundIpRule {
  /// The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  final String? action;
  /// The IP mask (CIDR) to match on.
  final String ipMask;

  /// Creates a new [NamespaceInboundIpRule].
  /// [action] The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  /// [ipMask] The IP mask (CIDR) to match on.
  NamespaceInboundIpRule({
    this.action,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ipMask,
    };
  }

  factory NamespaceInboundIpRule.fromMap(Map<String, dynamic> map) {
    return NamespaceInboundIpRule(
      action: map['action'] == null ? null : map['action'] as String,
      ipMask: map['ipMask'] as String,
    );
  }
}

