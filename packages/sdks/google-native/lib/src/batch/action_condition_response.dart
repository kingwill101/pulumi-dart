// ignore_for_file: unused_element, unnecessary_cast


/// Conditions for actions to deal with task failures.
class ActionConditionResponse {
  /// Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any of the exit code in the list, the condition is met and the action will be executed.
  final List<int> exitCodes;

  /// Creates a new [ActionConditionResponse].
  /// [exitCodes] Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any of the exit code in the list, the condition is met and the action will be executed.
  ActionConditionResponse({
    required this.exitCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exitCodes': exitCodes,
    };
  }

  factory ActionConditionResponse.fromMap(Map<String, dynamic> map) {
    return ActionConditionResponse(
      exitCodes: (map['exitCodes'] as List).cast<int>(),
    );
  }
}

