// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exit code from a tool execution.
class ToolExitCode {
  /// Tool execution exit code. A value of 0 means that the execution was successful. - In response: always set - In create/update request: always set
  final pulumi.Input<int>? number;

  /// Creates a new [ToolExitCode].
  /// [number] Tool execution exit code. A value of 0 means that the execution was successful. - In response: always set - In create/update request: always set
  const ToolExitCode({
    this.number,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': ?number,
    };
  }

  factory ToolExitCode.fromMap(Map<String, dynamic> map) {
    return ToolExitCode(
      number: (() { final guardedValue = map['number']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

