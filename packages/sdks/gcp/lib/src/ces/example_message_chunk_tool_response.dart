// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message_chunk_tool_response_toolset_tool.dart';

class ExampleMessageChunkToolResponse {
  /// (Output)
  /// Display name of the tool.
  final pulumi.Input<String>? displayName;

  /// The matching ID of the tool call the response is for.
  final pulumi.Input<String>? id;

  /// The tool execution result in JSON object format.
  /// Use "output" key to specify tool response and "error" key to specify
  /// error details (if any). If "output" and "error" keys are not specified,
  /// then whole "response" is treated as tool execution result.
  final pulumi.Input<String> response;

  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final pulumi.Input<String>? tool;

  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final pulumi.Input<ExampleMessageChunkToolResponseToolsetTool>? toolsetTool;

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
      'toolsetTool':
          ?pulumi.Input.mapOptionalInputValue<
            ExampleMessageChunkToolResponseToolsetTool,
            Map<String, dynamic>
          >(toolsetTool, (value) => value.toMap()),
    };
  }

  factory ExampleMessageChunkToolResponse.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkToolResponse(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      response: pulumi.Input.fromValue(map['response'] as String),
      tool: (() {
        final guardedValue = map['tool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      toolsetTool: (() {
        final guardedValue = map['toolsetTool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExampleMessageChunkToolResponseToolsetTool.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
