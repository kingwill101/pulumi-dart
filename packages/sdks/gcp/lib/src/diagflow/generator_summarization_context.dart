// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example.dart';
import 'generator_summarization_context_summarization_section.dart';

class GeneratorSummarizationContext {
  /// Optional. List of few shot examples.
  /// Structure is documented below.
  final List<GeneratorSummarizationContextFewShotExample>? fewShotExamples;
  /// Optional. The target language of the generated summary. The language code for conversation will be used if this field is empty. Supported 2.0 and later versions.
  final String? outputLanguageCode;
  /// Optional. List of sections. Note it contains both predefined section sand customer defined sections.
  /// Structure is documented below.
  final List<GeneratorSummarizationContextSummarizationSection>? summarizationSections;
  /// Optional. Version of the feature. If not set, default to latest version. Current candidates are ["1.0"].
  final String? version;

  /// Creates a new [GeneratorSummarizationContext].
  /// [fewShotExamples] Optional. List of few shot examples.
  /// [outputLanguageCode] Optional. The target language of the generated summary. The language code for conversation will be used if this field is empty. Supported 2.0 and later versions.
  /// [summarizationSections] Optional. List of sections. Note it contains both predefined section sand customer defined sections.
  /// [version] Optional. Version of the feature. If not set, default to latest version. Current candidates are ["1.0"].
  GeneratorSummarizationContext({
    this.fewShotExamples,
    this.outputLanguageCode,
    this.summarizationSections,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fewShotExamples': ?fewShotExamples == null ? null : pulumi.Input.encodeList<GeneratorSummarizationContextFewShotExample, Map<String, dynamic>>(fewShotExamples!, (value) => value.toMap()),
      'outputLanguageCode': ?outputLanguageCode,
      'summarizationSections': ?summarizationSections == null ? null : pulumi.Input.encodeList<GeneratorSummarizationContextSummarizationSection, Map<String, dynamic>>(summarizationSections!, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory GeneratorSummarizationContext.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContext(
      fewShotExamples: map['fewShotExamples'] == null ? null : pulumi.Input.decodeList<GeneratorSummarizationContextFewShotExample>(map['fewShotExamples'], (value) => GeneratorSummarizationContextFewShotExample.fromMap((value as Map).cast<String, dynamic>())),
      outputLanguageCode: map['outputLanguageCode'] == null ? null : map['outputLanguageCode'] as String,
      summarizationSections: map['summarizationSections'] == null ? null : pulumi.Input.decodeList<GeneratorSummarizationContextSummarizationSection>(map['summarizationSections'], (value) => GeneratorSummarizationContextSummarizationSection.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

