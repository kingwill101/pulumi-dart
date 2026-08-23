// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicInboundIpRule {
  /// The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The IP mask (CIDR) to match on.
  final pulumi.Input<String> ipMask;

  /// Creates a new [TopicInboundIpRule].
  /// [action] The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  /// [ipMask] The IP mask (CIDR) to match on.
  const TopicInboundIpRule({
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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipMask: pulumi.Input.fromValue(map['ipMask'] as String),
    );
  }
}
