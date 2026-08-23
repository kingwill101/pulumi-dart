// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Position contains source position information about the stack trace element such as line number, column number and length of the code block in bytes.
class PositionResponse {
  /// The source code column position (of the line) the current instruction was generated from.
  final pulumi.Input<String> column;
  /// The number of bytes of source code making up this stack trace element.
  final pulumi.Input<String> length;
  /// The source code line number the current instruction was generated from.
  final pulumi.Input<String> line;

  /// Creates a new [PositionResponse].
  /// [column] The source code column position (of the line) the current instruction was generated from.
  /// [length] The number of bytes of source code making up this stack trace element.
  /// [line] The source code line number the current instruction was generated from.
  const PositionResponse({
    required this.column,
    required this.length,
    required this.line,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'length': length,
      'line': line,
    };
  }

  factory PositionResponse.fromMap(Map<String, dynamic> map) {
    return PositionResponse(
      column: pulumi.Input.fromValue(map['column'] as String),
      length: pulumi.Input.fromValue(map['length'] as String),
      line: pulumi.Input.fromValue(map['line'] as String),
    );
  }
}
