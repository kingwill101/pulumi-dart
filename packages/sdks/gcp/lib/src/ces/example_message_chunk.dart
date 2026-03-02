// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message_chunk_agent_transfer.dart';
import 'example_message_chunk_image.dart';
import 'example_message_chunk_tool_call.dart';
import 'example_message_chunk_tool_response.dart';

class ExampleMessageChunk {
  /// Represents an event indicating the transfer of a conversation to a different
  /// agent.
  /// Structure is documented below.
  final pulumi.Input<ExampleMessageChunkAgentTransfer>? agentTransfer;
  /// Represents an image input or output in the conversation.
  /// Structure is documented below.
  final pulumi.Input<ExampleMessageChunkImage>? image;
  /// Text data.
  final pulumi.Input<String>? text;
  /// Request for the client or the agent to execute the specified tool.
  /// Structure is documented below.
  final pulumi.Input<ExampleMessageChunkToolCall>? toolCall;
  /// The execution result of a specific tool from the client or the agent.
  /// Structure is documented below.
  final pulumi.Input<ExampleMessageChunkToolResponse>? toolResponse;
  /// A struct represents variables that were updated in the conversation,
  /// keyed by variable names.
  final pulumi.Input<String>? updatedVariables;

  /// Creates a new [ExampleMessageChunk].
  /// [agentTransfer] Represents an event indicating the transfer of a conversation to a different
  /// [image] Represents an image input or output in the conversation.
  /// [text] Text data.
  /// [toolCall] Request for the client or the agent to execute the specified tool.
  /// [toolResponse] The execution result of a specific tool from the client or the agent.
  /// [updatedVariables] A struct represents variables that were updated in the conversation,
  ExampleMessageChunk({
    this.agentTransfer,
    this.image,
    this.text,
    this.toolCall,
    this.toolResponse,
    this.updatedVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentTransfer': ?pulumi.Input.mapOptionalInputValue<ExampleMessageChunkAgentTransfer, Map<String, dynamic>>(agentTransfer, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ExampleMessageChunkImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'text': ?text,
      'toolCall': ?pulumi.Input.mapOptionalInputValue<ExampleMessageChunkToolCall, Map<String, dynamic>>(toolCall, (value) => value.toMap()),
      'toolResponse': ?pulumi.Input.mapOptionalInputValue<ExampleMessageChunkToolResponse, Map<String, dynamic>>(toolResponse, (value) => value.toMap()),
      'updatedVariables': ?updatedVariables,
    };
  }

  factory ExampleMessageChunk.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunk(
      agentTransfer: map['agentTransfer'] == null ? null : (ExampleMessageChunkAgentTransfer.fromMap((map['agentTransfer'] as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (ExampleMessageChunkImage.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (map['text'] as String).input(),
      toolCall: map['toolCall'] == null ? null : (ExampleMessageChunkToolCall.fromMap((map['toolCall'] as Map).cast<String, dynamic>())).input(),
      toolResponse: map['toolResponse'] == null ? null : (ExampleMessageChunkToolResponse.fromMap((map['toolResponse'] as Map).cast<String, dynamic>())).input(),
      updatedVariables: map['updatedVariables'] == null ? null : (map['updatedVariables'] as String).input(),
    );
  }
}

