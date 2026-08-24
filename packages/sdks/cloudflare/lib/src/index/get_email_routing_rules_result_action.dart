// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingRulesResultAction {
  /// Type of supported action.
  /// Available values: "drop", "forward", "worker".
  final pulumi.Input<String> type;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetEmailRoutingRulesResultAction].
  /// [type] Type of supported action.
  /// [values] Required.
  const GetEmailRoutingRulesResultAction({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'values': values,
    };
  }

  factory GetEmailRoutingRulesResultAction.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRulesResultAction(
      type: pulumi.Input.fromValue(map['type'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
