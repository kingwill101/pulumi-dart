// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to be executed by a job step.
class JobStepActionResponse {
  /// The source of the action to execute.
  final pulumi.Input<String>? source;
  /// Type of action being executed by the job step.
  final pulumi.Input<String>? type;
  /// The action value, for example the text of the T-SQL script to execute.
  final pulumi.Input<String> value;

  /// Creates a new [JobStepActionResponse].
  /// [source] The source of the action to execute.
  /// [type] Type of action being executed by the job step.
  /// [value] The action value, for example the text of the T-SQL script to execute.
  JobStepActionResponse({
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

  factory JobStepActionResponse.fromMap(Map<String, dynamic> map) {
    return JobStepActionResponse(
      source: map['source'] == null ? null : (map['source'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

