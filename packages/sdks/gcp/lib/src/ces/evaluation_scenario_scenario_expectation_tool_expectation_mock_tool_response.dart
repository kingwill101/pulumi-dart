// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation_tool_expectation_mock_tool_response_toolset_tool.dart';

class EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse {
  /// (Output)
  /// Output only. Display name of the tool.
  final pulumi.Input<String>? displayName;
  /// Optional. Matching ID of the tool call.
  final pulumi.Input<String>? id;
  /// The tool execution result in JSON object format.
  final pulumi.Input<Map<String, String>>? response;
  /// Name of the tool to execute.
  final pulumi.Input<String>? tool;
  /// The toolset tool that got executed.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseToolsetTool>? toolsetTool;

  /// Creates a new [EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse].
  /// [displayName] (Output)
  /// [id] Optional. Matching ID of the tool call.
  /// [response] The tool execution result in JSON object format.
  /// [tool] Name of the tool to execute.
  /// [toolsetTool] The toolset tool that got executed.
  const EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse({
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
      'toolsetTool': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseToolsetTool, Map<String, dynamic>>(toolsetTool, (value) => value.toMap()),
    };
  }

  factory EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolsetTool: (() { final guardedValue = map['toolsetTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseToolsetTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
