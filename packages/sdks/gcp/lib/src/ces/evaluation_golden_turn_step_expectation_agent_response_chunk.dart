// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_step_expectation_agent_response_chunk_agent_transfer.dart';
import 'evaluation_golden_turn_step_expectation_agent_response_chunk_blob.dart';
import 'evaluation_golden_turn_step_expectation_agent_response_chunk_image.dart';
import 'evaluation_golden_turn_step_expectation_agent_response_chunk_tool_call.dart';
import 'evaluation_golden_turn_step_expectation_agent_response_chunk_tool_response.dart';

class EvaluationGoldenTurnStepExpectationAgentResponseChunk {
  /// Represents an event indicating the transfer of a conversation to a different agent.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationAgentResponseChunkAgentTransfer>? agentTransfer;
  /// Represents a blob input or output in the conversation.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob>? blob;
  /// Represents an image input or output in the conversation.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationAgentResponseChunkImage>? image;
  /// Text data.
  final pulumi.Input<String>? text;
  /// Request for the client or the agent to execute the specified tool.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCall>? toolCall;
  /// The execution result of a specific tool from the client or the agent.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponse>? toolResponse;
  /// Updated variables in JSON object format.
  final pulumi.Input<Map<String, String>>? updatedVariables;

  /// Creates a new [EvaluationGoldenTurnStepExpectationAgentResponseChunk].
  /// [agentTransfer] Represents an event indicating the transfer of a conversation to a different agent.
  /// [blob] Represents a blob input or output in the conversation.
  /// [image] Represents an image input or output in the conversation.
  /// [text] Text data.
  /// [toolCall] Request for the client or the agent to execute the specified tool.
  /// [toolResponse] The execution result of a specific tool from the client or the agent.
  /// [updatedVariables] Updated variables in JSON object format.
  const EvaluationGoldenTurnStepExpectationAgentResponseChunk({
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
      'agentTransfer': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationAgentResponseChunkAgentTransfer, Map<String, dynamic>>(agentTransfer, (value) => value.toMap()),
      'blob': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob, Map<String, dynamic>>(blob, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationAgentResponseChunkImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'text': ?text,
      'toolCall': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCall, Map<String, dynamic>>(toolCall, (value) => value.toMap()),
      'toolResponse': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponse, Map<String, dynamic>>(toolResponse, (value) => value.toMap()),
      'updatedVariables': ?updatedVariables,
    };
  }

  factory EvaluationGoldenTurnStepExpectationAgentResponseChunk.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectationAgentResponseChunk(
      agentTransfer: (() { final guardedValue = map['agentTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationAgentResponseChunkAgentTransfer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationAgentResponseChunkImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolCall: (() { final guardedValue = map['toolCall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolResponse: (() { final guardedValue = map['toolResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedVariables: (() { final guardedValue = map['updatedVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
