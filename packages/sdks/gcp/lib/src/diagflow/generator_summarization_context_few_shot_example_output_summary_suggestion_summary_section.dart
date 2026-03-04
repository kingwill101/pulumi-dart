// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection {
  /// Required. Name of the section.
  final pulumi.Input<String> section;

  /// Required. Summary text for the section.
  final pulumi.Input<String> summary;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection].
  /// [section] Required. Name of the section.
  /// [summary] Required. Summary text for the section.
  GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection({
    required this.section,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'section': section, 'summary': summary};
  }

  factory GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection.fromMap(
    Map<String, dynamic> map,
  ) {
    return GeneratorSummarizationContextFewShotExampleOutputSummarySuggestionSummarySection(
      section: pulumi.Input.fromValue(map['section'] as String),
      summary: pulumi.Input.fromValue(map['summary'] as String),
    );
  }
}
