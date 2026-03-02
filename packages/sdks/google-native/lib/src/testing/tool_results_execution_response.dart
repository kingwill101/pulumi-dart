// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a tool results execution resource. This has the results of a TestMatrix.
class ToolResultsExecutionResponse {
  /// A tool results execution ID.
  final pulumi.Input<String> executionId;
  /// A tool results history ID.
  final pulumi.Input<String> historyId;
  /// The cloud project that owns the tool results execution.
  final pulumi.Input<String> project;

  /// Creates a new [ToolResultsExecutionResponse].
  /// [executionId] A tool results execution ID.
  /// [historyId] A tool results history ID.
  /// [project] The cloud project that owns the tool results execution.
  ToolResultsExecutionResponse({
    required this.executionId,
    required this.historyId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'historyId': historyId,
      'project': project,
    };
  }

  factory ToolResultsExecutionResponse.fromMap(Map<String, dynamic> map) {
    return ToolResultsExecutionResponse(
      executionId: (map['executionId'] as String).input(),
      historyId: (map['historyId'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

