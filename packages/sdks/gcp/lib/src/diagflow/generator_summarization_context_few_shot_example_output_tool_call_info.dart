// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_output_tool_call_info_tool_call.dart';
import 'generator_summarization_context_few_shot_example_output_tool_call_info_tool_call_result.dart';

class GeneratorSummarizationContextFewShotExampleOutputToolCallInfo {
  /// Request for a tool call.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall> toolCall;
  /// Response for a tool call.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult> toolCallResult;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutputToolCallInfo].
  /// [toolCall] Request for a tool call.
  /// [toolCallResult] Response for a tool call.
  const GeneratorSummarizationContextFewShotExampleOutputToolCallInfo({
    required this.toolCall,
    required this.toolCallResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolCall': pulumi.Input.mapInputValue<GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall, Map<String, dynamic>>(toolCall, (value) => value.toMap()),
      'toolCallResult': pulumi.Input.mapInputValue<GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult, Map<String, dynamic>>(toolCallResult, (value) => value.toMap()),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutputToolCallInfo.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutputToolCallInfo(
      toolCall: pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall.fromMap((map['toolCall']! as Map).cast<String, dynamic>())),
      toolCallResult: pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult.fromMap((map['toolCallResult']! as Map).cast<String, dynamic>())),
    );
  }
}
