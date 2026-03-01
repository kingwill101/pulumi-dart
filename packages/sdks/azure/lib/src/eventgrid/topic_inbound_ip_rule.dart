// ignore_for_file: unused_element, unnecessary_cast


class TopicInboundIpRule {
  /// The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  final String? action;
  /// The IP mask (CIDR) to match on.
  final String ipMask;

  /// Creates a new [TopicInboundIpRule].
  /// [action] The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  /// [ipMask] The IP mask (CIDR) to match on.
  TopicInboundIpRule({
    this.action,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ipMask,
    };
  }

  factory TopicInboundIpRule.fromMap(Map<String, dynamic> map) {
    return TopicInboundIpRule(
      action: map['action'] == null ? null : map['action'] as String,
      ipMask: map['ipMask'] as String,
    );
  }
}

