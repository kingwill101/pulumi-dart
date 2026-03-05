// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_output_summary_suggestion.dart';

class GeneratorSummarizationContextFewShotExampleOutput {
  /// Optional. Suggested summary.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion>? summarySuggestion;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutput].
  /// [summarySuggestion] Optional. Suggested summary.
  GeneratorSummarizationContextFewShotExampleOutput({
    this.summarySuggestion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'summarySuggestion': ?pulumi.Input.mapOptionalInputValue<GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion, Map<String, dynamic>>(summarySuggestion, (value) => value.toMap()),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutput.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutput(
      summarySuggestion: (() { final guardedValue = map['summarySuggestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleOutputSummarySuggestion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

