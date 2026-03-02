// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An IP rule
class IPRuleResponse {
  /// Azure Networking ACL Action.
  final pulumi.Input<String>? action;
  /// An IP or CIDR or ServiceTag
  final pulumi.Input<String>? value;

  /// Creates a new [IPRuleResponse].
  /// [action] Azure Networking ACL Action.
  /// [value] An IP or CIDR or ServiceTag
  IPRuleResponse({
    this.action,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'value': ?value,
    };
  }

  factory IPRuleResponse.fromMap(Map<String, dynamic> map) {
    return IPRuleResponse(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

