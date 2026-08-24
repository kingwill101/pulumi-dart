// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingRulesResultMatcher {
  /// Field for type matcher.
  /// Available values: "to".
  final pulumi.Input<String> field;
  /// Type of matcher.
  /// Available values: "all", "literal".
  final pulumi.Input<String> type;
  /// Value for matcher.
  final pulumi.Input<String> value;

  /// Creates a new [GetEmailRoutingRulesResultMatcher].
  /// [field] Field for type matcher.
  /// [type] Type of matcher.
  /// [value] Value for matcher.
  const GetEmailRoutingRulesResultMatcher({
    required this.field,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'type': type,
      'value': value,
    };
  }

  factory GetEmailRoutingRulesResultMatcher.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRulesResultMatcher(
      field: pulumi.Input.fromValue(map['field'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
