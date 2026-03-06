// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk_agent_transfer.dart';
import 'app_version_snapshot_example_message_chunk_image.dart';
import 'app_version_snapshot_example_message_chunk_tool_call.dart';
import 'app_version_snapshot_example_message_chunk_tool_response.dart';

class AppVersionSnapshotExampleMessageChunk {
  /// (Output)
  /// Represents an event indicating the transfer of a conversation to a different
  /// agent.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExampleMessageChunkAgentTransfer>>? agentTransfers;
  /// (Output)
  /// Represents an image input or output in the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExampleMessageChunkImage>>? images;
  /// (Output)
  /// Text for the agent to respond with.
  final pulumi.Input<String>? text;
  /// (Output)
  /// Request for the client or the agent to execute the specified tool.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExampleMessageChunkToolCall>>? toolCalls;
  /// (Output)
  /// The execution result of a specific tool from the client or the agent.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExampleMessageChunkToolResponse>>? toolResponses;
  /// (Output)
  /// A struct represents variables that were updated in the conversation,
  /// keyed by variable names.
  final pulumi.Input<String>? updatedVariables;

  /// Creates a new [AppVersionSnapshotExampleMessageChunk].
  /// [agentTransfers] (Output)
  /// [images] (Output)
  /// [text] (Output)
  /// [toolCalls] (Output)
  /// [toolResponses] (Output)
  /// [updatedVariables] (Output)
  const AppVersionSnapshotExampleMessageChunk({
    this.agentTransfers,
    this.images,
    this.text,
    this.toolCalls,
    this.toolResponses,
    this.updatedVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentTransfers': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExampleMessageChunkAgentTransfer>, List<Map<String, dynamic>>>(agentTransfers, (value) => pulumi.Input.encodeList<AppVersionSnapshotExampleMessageChunkAgentTransfer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'images': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExampleMessageChunkImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<AppVersionSnapshotExampleMessageChunkImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': ?text,
      'toolCalls': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExampleMessageChunkToolCall>, List<Map<String, dynamic>>>(toolCalls, (value) => pulumi.Input.encodeList<AppVersionSnapshotExampleMessageChunkToolCall, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolResponses': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExampleMessageChunkToolResponse>, List<Map<String, dynamic>>>(toolResponses, (value) => pulumi.Input.encodeList<AppVersionSnapshotExampleMessageChunkToolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedVariables': ?updatedVariables,
    };
  }

  factory AppVersionSnapshotExampleMessageChunk.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunk(
      agentTransfers: (() { final guardedValue = map['agentTransfers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunkAgentTransfer>(guardedValue, (value) => AppVersionSnapshotExampleMessageChunkAgentTransfer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunkImage>(guardedValue, (value) => AppVersionSnapshotExampleMessageChunkImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolCalls: (() { final guardedValue = map['toolCalls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunkToolCall>(guardedValue, (value) => AppVersionSnapshotExampleMessageChunkToolCall.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolResponses: (() { final guardedValue = map['toolResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunkToolResponse>(guardedValue, (value) => AppVersionSnapshotExampleMessageChunkToolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedVariables: (() { final guardedValue = map['updatedVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

