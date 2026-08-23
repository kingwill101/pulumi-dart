// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_step_user_input_tool_responses_tool_response.dart';

class EvaluationGoldenTurnStepUserInputToolResponses {
  /// The list of tool execution results.
  /// Structure is documented below.
  final pulumi.Input<List<EvaluationGoldenTurnStepUserInputToolResponsesToolResponse>>? toolResponses;

  /// Creates a new [EvaluationGoldenTurnStepUserInputToolResponses].
  /// [toolResponses] The list of tool execution results.
  const EvaluationGoldenTurnStepUserInputToolResponses({
    this.toolResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolResponses': ?pulumi.Input.mapOptionalInputValue<List<EvaluationGoldenTurnStepUserInputToolResponsesToolResponse>, List<Map<String, dynamic>>>(toolResponses, (value) => pulumi.Input.encodeList<EvaluationGoldenTurnStepUserInputToolResponsesToolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EvaluationGoldenTurnStepUserInputToolResponses.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepUserInputToolResponses(
      toolResponses: (() { final guardedValue = map['toolResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationGoldenTurnStepUserInputToolResponsesToolResponse>(guardedValue, (value) => EvaluationGoldenTurnStepUserInputToolResponsesToolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
