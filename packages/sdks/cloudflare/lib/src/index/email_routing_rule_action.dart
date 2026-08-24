// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingRuleAction {
  /// Type of supported action.
  /// Available values: "drop", "forward", "worker".
  final pulumi.Input<String> type;
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [EmailRoutingRuleAction].
  /// [type] Type of supported action.
  /// [values] Optional.
  const EmailRoutingRuleAction({
    required this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'values': ?values,
    };
  }

  factory EmailRoutingRuleAction.fromMap(Map<String, dynamic> map) {
    return EmailRoutingRuleAction(
      type: pulumi.Input.fromValue(map['type'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
