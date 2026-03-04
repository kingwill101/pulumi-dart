// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to be executed by a job step.
class JobStepAction {
  /// The source of the action to execute.
  final pulumi.Input<String>? source;

  /// Type of action being executed by the job step.
  final pulumi.Input<String>? type;

  /// The action value, for example the text of the T-SQL script to execute.
  final pulumi.Input<String> value;

  /// Creates a new [JobStepAction].
  /// [source] The source of the action to execute.
  /// [type] Type of action being executed by the job step.
  /// [value] The action value, for example the text of the T-SQL script to execute.
  JobStepAction({this.source, this.type, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'source': ?source, 'type': ?type, 'value': value};
  }

  factory JobStepAction.fromMap(Map<String, dynamic> map) {
    return JobStepAction(
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
