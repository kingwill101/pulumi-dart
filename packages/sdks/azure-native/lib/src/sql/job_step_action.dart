// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to be executed by a job step.
class JobStepAction {
  /// The source of the action to execute.
  final pulumi.Input<dynamic>? source;
  /// Type of action being executed by the job step.
  final pulumi.Input<dynamic>? type;
  /// The action value, for example the text of the T-SQL script to execute.
  final pulumi.Input<String> value;

  /// Creates a new [JobStepAction].
  /// [source] The source of the action to execute.
  /// [type] Type of action being executed by the job step.
  /// [value] The action value, for example the text of the T-SQL script to execute.
  JobStepAction({
    pulumi.Input<dynamic>? source,
    pulumi.Input<dynamic>? type,
    required this.value,
  }) : source = source ?? pulumi.Input.fromValue('Inline'), type = type ?? pulumi.Input.fromValue('TSql');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source,
      'type': ?type,
      'value': value,
    };
  }

  factory JobStepAction.fromMap(Map<String, dynamic> map) {
    return JobStepAction(
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
