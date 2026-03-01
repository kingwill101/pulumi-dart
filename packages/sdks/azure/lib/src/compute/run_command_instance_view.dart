// ignore_for_file: unused_element, unnecessary_cast


class RunCommandInstanceView {
  final String? endTime;
  final String? errorMessage;
  final String? executionMessage;
  final String? executionState;
  final int? exitCode;
  final String? output;
  final String? startTime;

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
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      executionMessage: map['executionMessage'] == null ? null : map['executionMessage'] as String,
      executionState: map['executionState'] == null ? null : map['executionState'] as String,
      exitCode: map['exitCode'] == null ? null : map['exitCode'] as int,
      output: map['output'] == null ? null : map['output'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

