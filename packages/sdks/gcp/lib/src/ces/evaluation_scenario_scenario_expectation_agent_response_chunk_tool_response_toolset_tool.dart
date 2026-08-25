// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool {
  /// The tool ID to filter the tools to retrieve the schema for.
  final pulumi.Input<String?>? toolId;
  /// The resource name of the Toolset.
  final pulumi.Input<String> toolset;

  /// Creates a new [EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool].
  /// [toolId] The tool ID to filter the tools to retrieve the schema for.
  /// [toolset] The resource name of the Toolset.
  const EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool({
    this.toolId,
    required this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolId': ?toolId,
      'toolset': toolset,
    };
  }

  factory EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetTool(
      toolId: (() { final guardedValue = map['toolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolset: pulumi.Input.fromValue(map['toolset'] as String),
    );
  }
}
