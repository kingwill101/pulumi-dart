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
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorMessage: (() {
        final guardedValue = map['errorMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionMessage: (() {
        final guardedValue = map['executionMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionState: (() {
        final guardedValue = map['executionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exitCode: (() {
        final guardedValue = map['exitCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
