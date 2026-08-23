// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetTool {
  /// The tool ID to filter the tools to retrieve the schema for.
  final pulumi.Input<String>? toolId;
  /// The resource name of the Toolset.
  final pulumi.Input<String> toolset;

  /// Creates a new [EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetTool].
  /// [toolId] The tool ID to filter the tools to retrieve the schema for.
  /// [toolset] The resource name of the Toolset.
  const EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetTool({
    this.toolId,
    required this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolId': ?toolId,
      'toolset': toolset,
    };
  }

  factory EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetTool.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetTool(
      toolId: (() { final guardedValue = map['toolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolset: pulumi.Input.fromValue(map['toolset'] as String),
    );
  }
}
