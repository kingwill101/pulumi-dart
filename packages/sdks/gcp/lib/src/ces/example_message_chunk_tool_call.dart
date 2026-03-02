// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message_chunk_tool_call_toolset_tool.dart';

class ExampleMessageChunkToolCall {
  /// The input parameters and values for the tool in JSON object format.
  final pulumi.Input<String>? args;
  /// (Output)
  /// Display name of the tool.
  final pulumi.Input<String>? displayName;
  /// The unique identifier of the tool call. If populated, the client should
  /// return the execution result with the matching ID in
  /// ToolResponse.
  final pulumi.Input<String>? id;
  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final pulumi.Input<String>? tool;
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final pulumi.Input<ExampleMessageChunkToolCallToolsetTool>? toolsetTool;

  /// Creates a new [ExampleMessageChunkToolCall].
  /// [args] The input parameters and values for the tool in JSON object format.
  /// [displayName] (Output)
  /// [id] The unique identifier of the tool call. If populated, the client should
  /// [tool] The name of the tool to execute.
  /// [toolsetTool] A tool that is created from a toolset.
  ExampleMessageChunkToolCall({
    this.args,
    this.displayName,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'displayName': ?displayName,
      'id': ?id,
      'tool': ?tool,
      'toolsetTool': ?pulumi.Input.mapOptionalInputValue<ExampleMessageChunkToolCallToolsetTool, Map<String, dynamic>>(toolsetTool, (value) => value.toMap()),
    };
  }

  factory ExampleMessageChunkToolCall.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkToolCall(
      args: map['args'] == null ? null : (map['args']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      tool: map['tool'] == null ? null : (map['tool']! as String).input(),
      toolsetTool: map['toolsetTool'] == null ? null : (ExampleMessageChunkToolCallToolsetTool.fromMap((map['toolsetTool']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

