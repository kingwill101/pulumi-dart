// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScriptStackFrameResponse {
  /// One-based end column.
  final pulumi.Input<int> endColumn;

  /// One-based end line.
  final pulumi.Input<int> endLine;

  /// Name of the active procedure, empty if in a top-level script.
  final pulumi.Input<String> procedureId;

  /// One-based start column.
  final pulumi.Input<int> startColumn;

  /// One-based start line.
  final pulumi.Input<int> startLine;

  /// Text of the current statement/expression.
  final pulumi.Input<String> text;

  /// Creates a new [ScriptStackFrameResponse].
  /// [endColumn] One-based end column.
  /// [endLine] One-based end line.
  /// [procedureId] Name of the active procedure, empty if in a top-level script.
  /// [startColumn] One-based start column.
  /// [startLine] One-based start line.
  /// [text] Text of the current statement/expression.
  ScriptStackFrameResponse({
    required this.endColumn,
    required this.endLine,
    required this.procedureId,
    required this.startColumn,
    required this.startLine,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endColumn': endColumn,
      'endLine': endLine,
      'procedureId': procedureId,
      'startColumn': startColumn,
      'startLine': startLine,
      'text': text,
    };
  }

  factory ScriptStackFrameResponse.fromMap(Map<String, dynamic> map) {
    return ScriptStackFrameResponse(
      endColumn: pulumi.Input.fromValue(map['endColumn'] as int),
      endLine: pulumi.Input.fromValue(map['endLine'] as int),
      procedureId: pulumi.Input.fromValue(map['procedureId'] as String),
      startColumn: pulumi.Input.fromValue(map['startColumn'] as int),
      startLine: pulumi.Input.fromValue(map['startLine'] as int),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
