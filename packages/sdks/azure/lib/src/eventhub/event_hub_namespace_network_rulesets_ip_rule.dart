// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventHubNamespaceNetworkRulesetsIpRule {
  /// The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The IP mask to match on.
  final pulumi.Input<String> ipMask;

  /// Creates a new [EventHubNamespaceNetworkRulesetsIpRule].
  /// [action] The action to take when the rule is matched. Possible values are `Allow`. Defaults to `Allow`.
  /// [ipMask] The IP mask to match on.
  EventHubNamespaceNetworkRulesetsIpRule({
    this.action,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ipMask,
    };
  }

  factory EventHubNamespaceNetworkRulesetsIpRule.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceNetworkRulesetsIpRule(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      ipMask: (map['ipMask'] as String).input(),
    );
  }
}

