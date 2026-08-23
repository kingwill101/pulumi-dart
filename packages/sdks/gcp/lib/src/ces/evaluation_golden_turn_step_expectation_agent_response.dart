// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_step_expectation_agent_response_chunk.dart';

class EvaluationGoldenTurnStepExpectationAgentResponse {
  /// Content of the message as a series of chunks.
  /// Structure is documented below.
  final pulumi.Input<List<EvaluationGoldenTurnStepExpectationAgentResponseChunk>>? chunks;
  /// The role within the conversation, e.g., user, agent.
  final pulumi.Input<String>? role;

  /// Creates a new [EvaluationGoldenTurnStepExpectationAgentResponse].
  /// [chunks] Content of the message as a series of chunks.
  /// [role] The role within the conversation, e.g., user, agent.
  const EvaluationGoldenTurnStepExpectationAgentResponse({
    this.chunks,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunks': ?pulumi.Input.mapOptionalInputValue<List<EvaluationGoldenTurnStepExpectationAgentResponseChunk>, List<Map<String, dynamic>>>(chunks, (value) => pulumi.Input.encodeList<EvaluationGoldenTurnStepExpectationAgentResponseChunk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
    };
  }

  factory EvaluationGoldenTurnStepExpectationAgentResponse.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectationAgentResponse(
      chunks: (() { final guardedValue = map['chunks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationGoldenTurnStepExpectationAgentResponseChunk>(guardedValue, (value) => EvaluationGoldenTurnStepExpectationAgentResponseChunk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
