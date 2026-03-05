// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleCompilationDiagnosticPosition {
  /// (Output)
  /// Output only. End column number, beginning at 1.
  final pulumi.Input<int>? endColumn;
  /// (Output)
  /// Output only. End line number, beginning at 1.
  final pulumi.Input<int>? endLine;
  /// (Output)
  /// Output only. Start column number, beginning at 1.
  final pulumi.Input<int>? startColumn;
  /// (Output)
  /// Output only. Start line number, beginning at 1.
  final pulumi.Input<int>? startLine;

  /// Creates a new [RuleCompilationDiagnosticPosition].
  /// [endColumn] (Output)
  /// [endLine] (Output)
  /// [startColumn] (Output)
  /// [startLine] (Output)
  RuleCompilationDiagnosticPosition({
    this.endColumn,
    this.endLine,
    this.startColumn,
    this.startLine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endColumn': ?endColumn,
      'endLine': ?endLine,
      'startColumn': ?startColumn,
      'startLine': ?startLine,
    };
  }

  factory RuleCompilationDiagnosticPosition.fromMap(Map<String, dynamic> map) {
    return RuleCompilationDiagnosticPosition(
      endColumn: (() { final guardedValue = map['endColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endLine: (() { final guardedValue = map['endLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startColumn: (() { final guardedValue = map['startColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startLine: (() { final guardedValue = map['startLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

