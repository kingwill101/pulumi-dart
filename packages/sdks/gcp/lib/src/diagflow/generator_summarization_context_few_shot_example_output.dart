// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_output_summary_suggestion.dart';
import 'generator_summarization_context_few_shot_example_output_tool_call_info.dart';

class GeneratorSummarizationContextFewShotExampleOutput {
  /// Optional. Suggested summary.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion?>? summarySuggestion;
  /// List of request and response for tool calls executed.
  /// Structure is documented below.
  final pulumi.Input<List<GeneratorSummarizationContextFewShotExampleOutputToolCallInfo>?>? toolCallInfos;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutput].
  /// [summarySuggestion] Optional. Suggested summary.
  /// [toolCallInfos] List of request and response for tool calls executed.
  const GeneratorSummarizationContextFewShotExampleOutput({
    this.summarySuggestion,
    this.toolCallInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'summarySuggestion': ?pulumi.Input.mapOptionalInputValue<GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion, Map<String, dynamic>>(summarySuggestion, (value) => value.toMap()),
      'toolCallInfos': ?pulumi.Input.mapOptionalInputValue<List<GeneratorSummarizationContextFewShotExampleOutputToolCallInfo>, List<Map<String, dynamic>>>(toolCallInfos, (value) => pulumi.Input.encodeList<GeneratorSummarizationContextFewShotExampleOutputToolCallInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutput.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutput(
      summarySuggestion: (() { final guardedValue = map['summarySuggestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolCallInfos: (() { final guardedValue = map['toolCallInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GeneratorSummarizationContextFewShotExampleOutputToolCallInfo>(guardedValue, (value) => GeneratorSummarizationContextFewShotExampleOutputToolCallInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
