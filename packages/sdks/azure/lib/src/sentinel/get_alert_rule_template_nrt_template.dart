// ignore_for_file: unused_element, unnecessary_cast


class GetAlertRuleTemplateNrtTemplate {
  /// The description of this Sentinel Scheduled Alert Rule Template.
  final String description;
  /// The query of this Sentinel Scheduled Alert Rule Template.
  final String query;
  /// The alert severity of this Sentinel Scheduled Alert Rule Template.
  final String severity;
  /// A list of categories of attacks by which to classify the rule.
  final List<String> tactics;

  /// Creates a new [GetAlertRuleTemplateNrtTemplate].
  /// [description] The description of this Sentinel Scheduled Alert Rule Template.
  /// [query] The query of this Sentinel Scheduled Alert Rule Template.
  /// [severity] The alert severity of this Sentinel Scheduled Alert Rule Template.
  /// [tactics] A list of categories of attacks by which to classify the rule.
  GetAlertRuleTemplateNrtTemplate({
    required this.description,
    required this.query,
    required this.severity,
    required this.tactics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'query': query,
      'severity': severity,
      'tactics': tactics,
    };
  }

  factory GetAlertRuleTemplateNrtTemplate.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleTemplateNrtTemplate(
      description: map['description'] as String,
      query: map['query'] as String,
      severity: map['severity'] as String,
      tactics: (map['tactics'] as List).cast<String>(),
    );
  }
}

