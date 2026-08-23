// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation_agent_response_chunk_agent_transfer.dart';
import 'evaluation_scenario_scenario_expectation_agent_response_chunk_blob.dart';
import 'evaluation_scenario_scenario_expectation_agent_response_chunk_image.dart';
import 'evaluation_scenario_scenario_expectation_agent_response_chunk_tool_call.dart';
import 'evaluation_scenario_scenario_expectation_agent_response_chunk_tool_response.dart';

class EvaluationScenarioScenarioExpectationAgentResponseChunk {
  /// Represents an event indicating the transfer of a conversation to a different agent.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationAgentResponseChunkAgentTransfer>? agentTransfer;
  /// Represents a blob input or output in the conversation.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationAgentResponseChunkBlob>? blob;
  /// Represents an image input or output in the conversation.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationAgentResponseChunkImage>? image;
  /// Text data.
  final pulumi.Input<String>? text;
  /// Request for the client or the agent to execute the specified tool.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationAgentResponseChunkToolCall>? toolCall;
  /// The execution result of a specific tool from the client or the agent.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse>? toolResponse;
  /// Updated variables in JSON object format.
  final pulumi.Input<Map<String, String>>? updatedVariables;

  /// Creates a new [EvaluationScenarioScenarioExpectationAgentResponseChunk].
  /// [agentTransfer] Represents an event indicating the transfer of a conversation to a different agent.
  /// [blob] Represents a blob input or output in the conversation.
  /// [image] Represents an image input or output in the conversation.
  /// [text] Text data.
  /// [toolCall] Request for the client or the agent to execute the specified tool.
  /// [toolResponse] The execution result of a specific tool from the client or the agent.
  /// [updatedVariables] Updated variables in JSON object format.
  const EvaluationScenarioScenarioExpectationAgentResponseChunk({
    this.agentTransfer,
    this.blob,
    this.image,
    this.text,
    this.toolCall,
    this.toolResponse,
    this.updatedVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentTransfer': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationAgentResponseChunkAgentTransfer, Map<String, dynamic>>(agentTransfer, (value) => value.toMap()),
      'blob': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationAgentResponseChunkBlob, Map<String, dynamic>>(blob, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationAgentResponseChunkImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'text': ?text,
      'toolCall': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationAgentResponseChunkToolCall, Map<String, dynamic>>(toolCall, (value) => value.toMap()),
      'toolResponse': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse, Map<String, dynamic>>(toolResponse, (value) => value.toMap()),
      'updatedVariables': ?updatedVariables,
    };
  }

  factory EvaluationScenarioScenarioExpectationAgentResponseChunk.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationAgentResponseChunk(
      agentTransfer: (() { final guardedValue = map['agentTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationAgentResponseChunkAgentTransfer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationAgentResponseChunkBlob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationAgentResponseChunkImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolCall: (() { final guardedValue = map['toolCall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationAgentResponseChunkToolCall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolResponse: (() { final guardedValue = map['toolResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedVariables: (() { final guardedValue = map['updatedVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
