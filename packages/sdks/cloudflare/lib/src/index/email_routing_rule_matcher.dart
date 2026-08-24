// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingRuleMatcher {
  /// Field for type matcher.
  /// Available values: "to".
  final pulumi.Input<String?>? field;
  /// Type of matcher.
  /// Available values: "all", "literal".
  final pulumi.Input<String> type;
  /// Value for matcher.
  final pulumi.Input<String?>? value;

  /// Creates a new [EmailRoutingRuleMatcher].
  /// [field] Field for type matcher.
  /// [type] Type of matcher.
  /// [value] Value for matcher.
  const EmailRoutingRuleMatcher({
    this.field,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'type': type,
      'value': ?value,
    };
  }

  factory EmailRoutingRuleMatcher.fromMap(Map<String, dynamic> map) {
    return EmailRoutingRuleMatcher(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
