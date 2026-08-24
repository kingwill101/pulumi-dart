// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingCatchAllAction {
  /// Type of action for catch-all rule.
  /// Available values: "drop", "forward", "worker".
  final pulumi.Input<String> type;
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [EmailRoutingCatchAllAction].
  /// [type] Type of action for catch-all rule.
  /// [values] Optional.
  const EmailRoutingCatchAllAction({
    required this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'values': ?values,
    };
  }

  factory EmailRoutingCatchAllAction.fromMap(Map<String, dynamic> map) {
    return EmailRoutingCatchAllAction(
      type: pulumi.Input.fromValue(map['type'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
