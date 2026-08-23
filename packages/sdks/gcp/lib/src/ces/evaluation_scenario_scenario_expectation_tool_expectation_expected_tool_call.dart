// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation_tool_expectation_expected_tool_call_toolset_tool.dart';

class EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall {
  /// The input parameters and values for the tool in JSON object format.
  final pulumi.Input<Map<String, String>>? args;
  /// (Output)
  /// Output only. Display name of the tool.
  final pulumi.Input<String>? displayName;
  /// Optional. The unique identifier of the tool call.
  final pulumi.Input<String>? id;
  /// Name of the tool.
  final pulumi.Input<String>? tool;
  /// The toolset tool.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallToolsetTool>? toolsetTool;

  /// Creates a new [EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall].
  /// [args] The input parameters and values for the tool in JSON object format.
  /// [displayName] (Output)
  /// [id] Optional. The unique identifier of the tool call.
  /// [tool] Name of the tool.
  /// [toolsetTool] The toolset tool.
  const EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall({
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
      'toolsetTool': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallToolsetTool, Map<String, dynamic>>(toolsetTool, (value) => value.toMap()),
    };
  }

  factory EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolsetTool: (() { final guardedValue = map['toolsetTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallToolsetTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
