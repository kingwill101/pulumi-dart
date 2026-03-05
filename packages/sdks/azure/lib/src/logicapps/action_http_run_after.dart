// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionHttpRunAfter {
  /// Specifies the name of the precedent HTTP Action.
  final pulumi.Input<String> actionName;
  /// Specifies the expected result of the precedent HTTP Action, only after which the current HTTP Action will be triggered. Possible values include `Succeeded`, `Failed`, `Skipped` and `TimedOut`.
  final pulumi.Input<String> actionResult;

  /// Creates a new [ActionHttpRunAfter].
  /// [actionName] Specifies the name of the precedent HTTP Action.
  /// [actionResult] Specifies the expected result of the precedent HTTP Action, only after which the current HTTP Action will be triggered. Possible values include `Succeeded`, `Failed`, `Skipped` and `TimedOut`.
  ActionHttpRunAfter({
    required this.actionName,
    required this.actionResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'actionResult': actionResult,
    };
  }

  factory ActionHttpRunAfter.fromMap(Map<String, dynamic> map) {
    return ActionHttpRunAfter(
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      actionResult: pulumi.Input.fromValue(map['actionResult'] as String),
    );
  }
}

