// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exit code from a tool execution.
class ToolExitCodeResponse {
  /// Tool execution exit code. A value of 0 means that the execution was successful. - In response: always set - In create/update request: always set
  final pulumi.Input<int> number;

  /// Creates a new [ToolExitCodeResponse].
  /// [number] Tool execution exit code. A value of 0 means that the execution was successful. - In response: always set - In create/update request: always set
  const ToolExitCodeResponse({
    required this.number,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
    };
  }

  factory ToolExitCodeResponse.fromMap(Map<String, dynamic> map) {
    return ToolExitCodeResponse(
      number: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['number'])),
    );
  }
}
