// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An IP rule
class IPRule {
  /// Azure Networking ACL Action.
  final pulumi.Input<String>? action;

  /// An IP or CIDR or ServiceTag
  final pulumi.Input<String>? value;

  /// Creates a new [IPRule].
  /// [action] Azure Networking ACL Action.
  /// [value] An IP or CIDR or ServiceTag
  IPRule({this.action, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': ?action, 'value': ?value};
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
