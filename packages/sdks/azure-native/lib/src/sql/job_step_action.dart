// ignore_for_file: unused_element, unnecessary_cast


/// The action to be executed by a job step.
class JobStepAction {
  /// The source of the action to execute.
  final String? source;
  /// Type of action being executed by the job step.
  final String? type;
  /// The action value, for example the text of the T-SQL script to execute.
  final String value;

  /// Creates a new [JobStepAction].
  /// [source] The source of the action to execute.
  /// [type] Type of action being executed by the job step.
  /// [value] The action value, for example the text of the T-SQL script to execute.
  JobStepAction({
    this.source,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source,
      'type': ?type,
      'value': value,
    };
  }

  factory JobStepAction.fromMap(Map<String, dynamic> map) {
    return JobStepAction(
      source: map['source'] == null ? null : map['source'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] as String,
    );
  }
}

