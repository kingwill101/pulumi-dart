// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation_agent_response_chunk_tool_response_toolset_tool.dart';

class EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse {
  /// (Output)
  /// Display name of the tool.
  final pulumi.Input<String?>? displayName;
  /// The matching ID of the tool call the response is for.
  final pulumi.Input<String?>? id;
  /// The tool execution result in JSON object format.
  final pulumi.Input<Map<String, String>?>? response;
  /// The resource name of the tool.
  final pulumi.Input<String?>? tool;
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool?>? toolsetTool;

  /// Creates a new [EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse].
  /// [displayName] (Output)
  /// [id] The matching ID of the tool call the response is for.
  /// [response] The tool execution result in JSON object format.
  /// [tool] The resource name of the tool.
  /// [toolsetTool] A tool that is created from a toolset.
  const EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse({
    this.displayName,
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'response': ?response,
      'tool': ?tool,
      'toolsetTool': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool, Map<String, dynamic>>(toolsetTool, (value) => value.toMap()),
    };
  }

  factory EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolsetTool: (() { final guardedValue = map['toolsetTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
