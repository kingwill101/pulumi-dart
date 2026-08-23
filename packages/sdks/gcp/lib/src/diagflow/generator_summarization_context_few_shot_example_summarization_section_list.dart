// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_summarization_section_list_summarization_section.dart';

class GeneratorSummarizationContextFewShotExampleSummarizationSectionList {
  /// Optional. Summarization sections.
  /// Structure is documented below.
  final pulumi.Input<List<GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection>>? summarizationSections;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleSummarizationSectionList].
  /// [summarizationSections] Optional. Summarization sections.
  const GeneratorSummarizationContextFewShotExampleSummarizationSectionList({
    this.summarizationSections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'summarizationSections': ?pulumi.Input.mapOptionalInputValue<List<GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection>, List<Map<String, dynamic>>>(summarizationSections, (value) => pulumi.Input.encodeList<GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleSummarizationSectionList.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleSummarizationSectionList(
      summarizationSections: (() { final guardedValue = map['summarizationSections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection>(guardedValue, (value) => GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
