// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example.dart';
import 'generator_summarization_context_summarization_section.dart';

class GeneratorSummarizationContext {
  /// Optional. List of few shot examples.
  /// Structure is documented below.
  final pulumi.Input<List<GeneratorSummarizationContextFewShotExample>>? fewShotExamples;
  /// Optional. The target language of the generated summary. The language code for conversation will be used if this field is empty. Supported 2.0 and later versions.
  final pulumi.Input<String>? outputLanguageCode;
  /// Optional. List of sections. Note it contains both predefined section sand customer defined sections.
  /// Structure is documented below.
  final pulumi.Input<List<GeneratorSummarizationContextSummarizationSection>>? summarizationSections;
  /// Optional. Version of the feature. If not set, default to latest version. Current candidates are ["1.0"].
  final pulumi.Input<String>? version;

  /// Creates a new [GeneratorSummarizationContext].
  /// [fewShotExamples] Optional. List of few shot examples.
  /// [outputLanguageCode] Optional. The target language of the generated summary. The language code for conversation will be used if this field is empty. Supported 2.0 and later versions.
  /// [summarizationSections] Optional. List of sections. Note it contains both predefined section sand customer defined sections.
  /// [version] Optional. Version of the feature. If not set, default to latest version. Current candidates are ["1.0"].
  const GeneratorSummarizationContext({
    this.fewShotExamples,
    this.outputLanguageCode,
    this.summarizationSections,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fewShotExamples': ?pulumi.Input.mapOptionalInputValue<List<GeneratorSummarizationContextFewShotExample>, List<Map<String, dynamic>>>(fewShotExamples, (value) => pulumi.Input.encodeList<GeneratorSummarizationContextFewShotExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputLanguageCode': ?outputLanguageCode,
      'summarizationSections': ?pulumi.Input.mapOptionalInputValue<List<GeneratorSummarizationContextSummarizationSection>, List<Map<String, dynamic>>>(summarizationSections, (value) => pulumi.Input.encodeList<GeneratorSummarizationContextSummarizationSection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory GeneratorSummarizationContext.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContext(
      fewShotExamples: (() { final guardedValue = map['fewShotExamples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GeneratorSummarizationContextFewShotExample>(guardedValue, (value) => GeneratorSummarizationContextFewShotExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outputLanguageCode: (() { final guardedValue = map['outputLanguageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summarizationSections: (() { final guardedValue = map['summarizationSections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GeneratorSummarizationContextSummarizationSection>(guardedValue, (value) => GeneratorSummarizationContextSummarizationSection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
