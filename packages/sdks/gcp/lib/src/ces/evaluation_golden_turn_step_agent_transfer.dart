// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepAgentTransfer {
  /// (Output)
  /// Display name of the agent.
  final pulumi.Input<String>? displayName;
  /// The agent to which the conversation is being transferred.
  final pulumi.Input<String> targetAgent;

  /// Creates a new [EvaluationGoldenTurnStepAgentTransfer].
  /// [displayName] (Output)
  /// [targetAgent] The agent to which the conversation is being transferred.
  const EvaluationGoldenTurnStepAgentTransfer({
    this.displayName,
    required this.targetAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'targetAgent': targetAgent,
    };
  }

  factory EvaluationGoldenTurnStepAgentTransfer.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepAgentTransfer(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAgent: pulumi.Input.fromValue(map['targetAgent'] as String),
    );
  }
}
