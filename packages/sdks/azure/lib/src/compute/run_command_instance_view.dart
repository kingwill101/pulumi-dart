// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunCommandInstanceView {
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String>? errorMessage;
  final pulumi.Input<String>? executionMessage;
  final pulumi.Input<String>? executionState;
  final pulumi.Input<int>? exitCode;
  final pulumi.Input<String>? output;
  final pulumi.Input<String>? startTime;

  /// Creates a new [RunCommandInstanceView].
  /// [endTime] Optional.
  /// [errorMessage] Optional.
  /// [executionMessage] Optional.
  /// [executionState] Optional.
  /// [exitCode] Optional.
  /// [output] Optional.
  /// [startTime] Optional.
  RunCommandInstanceView({
    this.endTime,
    this.errorMessage,
    this.executionMessage,
    this.executionState,
    this.exitCode,
    this.output,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'errorMessage': ?errorMessage,
      'executionMessage': ?executionMessage,
      'executionState': ?executionState,
      'exitCode': ?exitCode,
      'output': ?output,
      'startTime': ?startTime,
    };
  }

  factory RunCommandInstanceView.fromMap(Map<String, dynamic> map) {
    return RunCommandInstanceView(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      executionMessage: map['executionMessage'] == null ? null : (map['executionMessage'] as String).input(),
      executionState: map['executionState'] == null ? null : (map['executionState'] as String).input(),
      exitCode: map['exitCode'] == null ? null : (map['exitCode'] as int).input(),
      output: map['output'] == null ? null : (map['output'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

