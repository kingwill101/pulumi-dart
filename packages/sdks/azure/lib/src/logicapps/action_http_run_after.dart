// ignore_for_file: unused_element, unnecessary_cast


class ActionHttpRunAfter {
  /// Specifies the name of the precedent HTTP Action.
  final String actionName;
  /// Specifies the expected result of the precedent HTTP Action, only after which the current HTTP Action will be triggered. Possible values include `Succeeded`, `Failed`, `Skipped` and `TimedOut`.
  final String actionResult;

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
      actionName: map['actionName'] as String,
      actionResult: map['actionResult'] as String,
    );
  }
}

