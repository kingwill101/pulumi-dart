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
  GeneratorSummarizationContext({
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
      fewShotExamples: map['fewShotExamples'] == null ? null : (pulumi.Input.decodeList<GeneratorSummarizationContextFewShotExample>(map['fewShotExamples']!, (value) => GeneratorSummarizationContextFewShotExample.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outputLanguageCode: map['outputLanguageCode'] == null ? null : (map['outputLanguageCode']! as String).input(),
      summarizationSections: map['summarizationSections'] == null ? null : (pulumi.Input.decodeList<GeneratorSummarizationContextSummarizationSection>(map['summarizationSections']!, (value) => GeneratorSummarizationContextSummarizationSection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

