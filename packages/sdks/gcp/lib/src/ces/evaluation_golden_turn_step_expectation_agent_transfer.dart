// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepExpectationAgentTransfer {
  /// (Output)
  /// Display name of the agent.
  final pulumi.Input<String>? displayName;
  /// The agent to which the conversation is being transferred.
  final pulumi.Input<String>? targetAgent;

  /// Creates a new [EvaluationGoldenTurnStepExpectationAgentTransfer].
  /// [displayName] (Output)
  /// [targetAgent] The agent to which the conversation is being transferred.
  const EvaluationGoldenTurnStepExpectationAgentTransfer({
    this.displayName,
    this.targetAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'targetAgent': ?targetAgent,
    };
  }

  factory EvaluationGoldenTurnStepExpectationAgentTransfer.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectationAgentTransfer(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAgent: (() { final guardedValue = map['targetAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
