// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertRuleTemplateScheduledTemplate {
  /// The description of this Sentinel Scheduled Alert Rule Template.
  final pulumi.Input<String> description;
  /// The query of this Sentinel Scheduled Alert Rule Template.
  final pulumi.Input<String> query;
  /// The ISO 8601 timespan duration between two consecutive queries.
  final pulumi.Input<String> queryFrequency;
  /// The ISO 8601 timespan duration, which determine the time period of the data covered by the query.
  final pulumi.Input<String> queryPeriod;
  /// The alert severity of this Sentinel Scheduled Alert Rule Template.
  final pulumi.Input<String> severity;
  /// A list of categories of attacks by which to classify the rule.
  final pulumi.Input<List<String>> tactics;
  /// The alert trigger operator, combined with `trigger_threshold`, setting alert threshold of this Sentinel Scheduled Alert Rule Template.
  final pulumi.Input<String> triggerOperator;
  /// The baseline number of query results generated, combined with `trigger_operator`, setting alert threshold of this Sentinel Scheduled Alert Rule Template.
  final pulumi.Input<int> triggerThreshold;

  /// Creates a new [GetAlertRuleTemplateScheduledTemplate].
  /// [description] The description of this Sentinel Scheduled Alert Rule Template.
  /// [query] The query of this Sentinel Scheduled Alert Rule Template.
  /// [queryFrequency] The ISO 8601 timespan duration between two consecutive queries.
  /// [queryPeriod] The ISO 8601 timespan duration, which determine the time period of the data covered by the query.
  /// [severity] The alert severity of this Sentinel Scheduled Alert Rule Template.
  /// [tactics] A list of categories of attacks by which to classify the rule.
  /// [triggerOperator] The alert trigger operator, combined with `trigger_threshold`, setting alert threshold of this Sentinel Scheduled Alert Rule Template.
  /// [triggerThreshold] The baseline number of query results generated, combined with `trigger_operator`, setting alert threshold of this Sentinel Scheduled Alert Rule Template.
  GetAlertRuleTemplateScheduledTemplate({
    required this.description,
    required this.query,
    required this.queryFrequency,
    required this.queryPeriod,
    required this.severity,
    required this.tactics,
    required this.triggerOperator,
    required this.triggerThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'query': query,
      'queryFrequency': queryFrequency,
      'queryPeriod': queryPeriod,
      'severity': severity,
      'tactics': tactics,
      'triggerOperator': triggerOperator,
      'triggerThreshold': triggerThreshold,
    };
  }

  factory GetAlertRuleTemplateScheduledTemplate.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleTemplateScheduledTemplate(
      description: (map['description'] as String).input(),
      query: (map['query'] as String).input(),
      queryFrequency: (map['queryFrequency'] as String).input(),
      queryPeriod: (map['queryPeriod'] as String).input(),
      severity: (map['severity'] as String).input(),
      tactics: ((map['tactics'] as List).cast<String>()).input(),
      triggerOperator: (map['triggerOperator'] as String).input(),
      triggerThreshold: (map['triggerThreshold'] as int).input(),
    );
  }
}

