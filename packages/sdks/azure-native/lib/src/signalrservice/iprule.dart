// ignore_for_file: unused_element, unnecessary_cast


/// An IP rule
class IPRule {
  /// Azure Networking ACL Action.
  final String? action;
  /// An IP or CIDR or ServiceTag
  final String? value;

  /// Creates a new [IPRule].
  /// [action] Azure Networking ACL Action.
  /// [value] An IP or CIDR or ServiceTag
  IPRule({
    this.action,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'value': ?value,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      action: map['action'] == null ? null : map['action'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

