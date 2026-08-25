// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepExpectationToolCallToolsetTool {
  /// The tool ID to filter the tools to retrieve the schema for.
  final pulumi.Input<String?>? toolId;
  /// The resource name of the Toolset.
  final pulumi.Input<String> toolset;

  /// Creates a new [EvaluationGoldenTurnStepExpectationToolCallToolsetTool].
  /// [toolId] The tool ID to filter the tools to retrieve the schema for.
  /// [toolset] The resource name of the Toolset.
  const EvaluationGoldenTurnStepExpectationToolCallToolsetTool({
    this.toolId,
    required this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolId': ?toolId,
      'toolset': toolset,
    };
  }

  factory EvaluationGoldenTurnStepExpectationToolCallToolsetTool.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectationToolCallToolsetTool(
      toolId: (() { final guardedValue = map['toolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolset: pulumi.Input.fromValue(map['toolset'] as String),
    );
  }
}
