// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_step_expectation_tool_call_toolset_tool.dart';

class EvaluationGoldenTurnStepExpectationToolCall {
  /// The input parameters and values for the tool in JSON object format.
  final pulumi.Input<Map<String, String>>? args;
  /// (Output)
  /// Display name of the tool.
  final pulumi.Input<String>? displayName;
  /// The unique identifier of the tool call.
  final pulumi.Input<String>? id;
  /// The resource name of the tool.
  final pulumi.Input<String>? tool;
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationToolCallToolsetTool>? toolsetTool;

  /// Creates a new [EvaluationGoldenTurnStepExpectationToolCall].
  /// [args] The input parameters and values for the tool in JSON object format.
  /// [displayName] (Output)
  /// [id] The unique identifier of the tool call.
  /// [tool] The resource name of the tool.
  /// [toolsetTool] A tool that is created from a toolset.
  const EvaluationGoldenTurnStepExpectationToolCall({
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
      'toolsetTool': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationToolCallToolsetTool, Map<String, dynamic>>(toolsetTool, (value) => value.toMap()),
    };
  }

  factory EvaluationGoldenTurnStepExpectationToolCall.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectationToolCall(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolsetTool: (() { final guardedValue = map['toolsetTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationToolCallToolsetTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
