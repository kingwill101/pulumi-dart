// ignore_for_file: unused_element, unnecessary_cast


class EventGridTopicInboundIpRule {
  /// The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  final String? action;
  /// The IP mask (CIDR) to match on.
  final String ipMask;

  /// Creates a new [EventGridTopicInboundIpRule].
  /// [action] The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  /// [ipMask] The IP mask (CIDR) to match on.
  EventGridTopicInboundIpRule({
    this.action,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ipMask,
    };
  }

  factory EventGridTopicInboundIpRule.fromMap(Map<String, dynamic> map) {
    return EventGridTopicInboundIpRule(
      action: map['action'] == null ? null : map['action'] as String,
      ipMask: map['ipMask'] as String,
    );
  }
}

