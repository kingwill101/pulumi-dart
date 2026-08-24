// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingRuleAction {
  /// Type of supported action.
  /// Available values: "drop", "forward", "worker".
  final pulumi.Input<String> type;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetEmailRoutingRuleAction].
  /// [type] Type of supported action.
  /// [values] Required.
  const GetEmailRoutingRuleAction({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'values': values,
    };
  }

  factory GetEmailRoutingRuleAction.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRuleAction(
      type: pulumi.Input.fromValue(map['type'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
