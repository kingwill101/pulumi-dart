// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection {
  /// Optional. Definition of the section, for example, "what the customer needs help with or has question about."
  final pulumi.Input<String>? definition;
  /// Optional. Name of the section, for example, "situation".
  final pulumi.Input<String>? key;
  /// Optional. Type of the summarization section.
  /// Possible values are: `SITUATION`, `ACTION`, `RESOLUTION`, `REASON_FOR_CANCELLATION`, `CUSTOMER_SATISFACTION`, `ENTITIES`, `CUSTOMER_DEFINED`, `SITUATION_CONCISE`, `ACTION_CONCISE`.
  final pulumi.Input<String>? type;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection].
  /// [definition] Optional. Definition of the section, for example, "what the customer needs help with or has question about."
  /// [key] Optional. Name of the section, for example, "situation".
  /// [type] Optional. Type of the summarization section.
  const GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection({
    this.definition,
    this.key,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
      'key': ?key,
      'type': ?type,
    };
  }

  factory GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
