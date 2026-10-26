// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm {
  /// Required. The description or meaning of the term.
  final pulumi.Input<String> description;
  /// Required. User friendly display name of the glossary term.
  final pulumi.Input<String> displayName;
  /// Optional. A list of general purpose labels associated with this term.
  final pulumi.Input<List<String>?>? labels;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm].
  /// [description] Required. The description or meaning of the term.
  /// [displayName] Required. User friendly display name of the glossary term.
  /// [labels] Optional. A list of general purpose labels associated with this term.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm({
    required this.description,
    required this.displayName,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'labels': ?labels,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
