// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_output_tool_call_info_tool_call_result_error.dart';

class GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult {
  /// The name of the tool's action associated with this call.
  final pulumi.Input<String?>? action;
  /// An error produced by the tool call.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError?>? error;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult].
  /// [action] The name of the tool's action associated with this call.
  /// [error] An error produced by the tool call.
  const GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult({
    this.action,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'error': ?pulumi.Input.mapOptionalInputValue<GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError, Map<String, dynamic>>(error, (value) => value.toMap()),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
