// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a tool results step resource. This has the results of a TestExecution.
class ToolResultsStepResponse {
  /// A tool results execution ID.
  final pulumi.Input<String> executionId;

  /// A tool results history ID.
  final pulumi.Input<String> historyId;

  /// The cloud project that owns the tool results step.
  final pulumi.Input<String> project;

  /// A tool results step ID.
  final pulumi.Input<String> stepId;

  /// Creates a new [ToolResultsStepResponse].
  /// [executionId] A tool results execution ID.
  /// [historyId] A tool results history ID.
  /// [project] The cloud project that owns the tool results step.
  /// [stepId] A tool results step ID.
  ToolResultsStepResponse({
    required this.executionId,
    required this.historyId,
    required this.project,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'historyId': historyId,
      'project': project,
      'stepId': stepId,
    };
  }

  factory ToolResultsStepResponse.fromMap(Map<String, dynamic> map) {
    return ToolResultsStepResponse(
      executionId: pulumi.Input.fromValue(map['executionId'] as String),
      historyId: pulumi.Input.fromValue(map['historyId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      stepId: pulumi.Input.fromValue(map['stepId'] as String),
    );
  }
}
