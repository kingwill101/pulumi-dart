// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Conditions for actions to deal with task failures.
class ActionCondition {
  /// Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any of the exit code in the list, the condition is met and the action will be executed.
  final pulumi.Input<List<int>>? exitCodes;

  /// Creates a new [ActionCondition].
  /// [exitCodes] Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any of the exit code in the list, the condition is met and the action will be executed.
  const ActionCondition({
    this.exitCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exitCodes': ?exitCodes,
    };
  }

  factory ActionCondition.fromMap(Map<String, dynamic> map) {
    return ActionCondition(
      exitCodes: (() { final guardedValue = map['exitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
