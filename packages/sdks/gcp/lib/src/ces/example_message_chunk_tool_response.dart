// ignore_for_file: unused_element, unnecessary_cast

import 'example_message_chunk_tool_response_toolset_tool.dart';

class ExampleMessageChunkToolResponse {
  /// (Output)
  /// Display name of the tool.
  final String? displayName;
  /// The matching ID of the tool call the response is for.
  final String? id;
  /// The tool execution result in JSON object format.
  /// Use "output" key to specify tool response and "error" key to specify
  /// error details (if any). If "output" and "error" keys are not specified,
  /// then whole "response" is treated as tool execution result.
  final String response;
  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final String? tool;
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final ExampleMessageChunkToolResponseToolsetTool? toolsetTool;

  /// Creates a new [ExampleMessageChunkToolResponse].
  /// [displayName] (Output)
  /// [id] The matching ID of the tool call the response is for.
  /// [response] The tool execution result in JSON object format.
  /// [tool] The name of the tool to execute.
  /// [toolsetTool] A tool that is created from a toolset.
  ExampleMessageChunkToolResponse({
    this.displayName,
    this.id,
    required this.response,
    this.tool,
    this.toolsetTool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'response': response,
      'tool': ?tool,
      'toolsetTool': ?toolsetTool == null ? null : toolsetTool!.toMap(),
    };
  }

  factory ExampleMessageChunkToolResponse.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkToolResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      response: map['response'] as String,
      tool: map['tool'] == null ? null : map['tool'] as String,
      toolsetTool: map['toolsetTool'] == null ? null : ExampleMessageChunkToolResponseToolsetTool.fromMap((map['toolsetTool'] as Map).cast<String, dynamic>()),
    );
  }
}

