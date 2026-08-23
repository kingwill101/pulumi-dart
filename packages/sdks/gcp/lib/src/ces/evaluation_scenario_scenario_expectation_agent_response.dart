// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation_agent_response_chunk.dart';

class EvaluationScenarioScenarioExpectationAgentResponse {
  /// Content of the message as a series of chunks.
  /// Structure is documented below.
  final pulumi.Input<List<EvaluationScenarioScenarioExpectationAgentResponseChunk>>? chunks;
  /// The role within the conversation, e.g., user, agent.
  final pulumi.Input<String>? role;

  /// Creates a new [EvaluationScenarioScenarioExpectationAgentResponse].
  /// [chunks] Content of the message as a series of chunks.
  /// [role] The role within the conversation, e.g., user, agent.
  const EvaluationScenarioScenarioExpectationAgentResponse({
    this.chunks,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunks': ?pulumi.Input.mapOptionalInputValue<List<EvaluationScenarioScenarioExpectationAgentResponseChunk>, List<Map<String, dynamic>>>(chunks, (value) => pulumi.Input.encodeList<EvaluationScenarioScenarioExpectationAgentResponseChunk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
    };
  }

  factory EvaluationScenarioScenarioExpectationAgentResponse.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationAgentResponse(
      chunks: (() { final guardedValue = map['chunks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationScenarioScenarioExpectationAgentResponseChunk>(guardedValue, (value) => EvaluationScenarioScenarioExpectationAgentResponseChunk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
