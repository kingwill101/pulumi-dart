// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingCatchAllAction {
  /// Type of action for catch-all rule.
  /// Available values: "drop", "forward", "worker".
  final pulumi.Input<String> type;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetEmailRoutingCatchAllAction].
  /// [type] Type of action for catch-all rule.
  /// [values] Required.
  const GetEmailRoutingCatchAllAction({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'values': values,
    };
  }

  factory GetEmailRoutingCatchAllAction.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingCatchAllAction(
      type: pulumi.Input.fromValue(map['type'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
