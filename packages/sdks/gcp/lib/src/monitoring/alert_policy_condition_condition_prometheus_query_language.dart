// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionPrometheusQueryLanguage {
  /// The alerting rule name of this alert in the corresponding Prometheus
  /// configuration file.
  /// Some external tools may require this field to be populated correctly
  /// in order to refer to the original Prometheus configuration file.
  /// The rule group name and the alert name are necessary to update the
  /// relevant AlertPolicies in case the definition of the rule group changes
  /// in the future.
  /// This field is optional. If this field is not empty, then it must be a
  /// valid Prometheus label name.
  final pulumi.Input<String>? alertRule;
  final pulumi.Input<bool>? disableMetricValidation;
  /// Alerts are considered firing once their PromQL expression evaluated
  /// to be "true" for this long. Alerts whose PromQL expression was not
  /// evaluated to be "true" for long enough are considered pending. The
  /// default value is zero. Must be zero or positive.
  final pulumi.Input<String>? duration;
  /// How often this rule should be evaluated. Must be a positive multiple
  /// of 30 seconds or missing. The default value is 30 seconds. If this
  /// PrometheusQueryLanguageCondition was generated from a Prometheus
  /// alerting rule, then this value should be taken from the enclosing
  /// rule group.
  final pulumi.Input<String>? evaluationInterval;
  /// Labels to add to or overwrite in the PromQL query result. Label names
  /// must be valid.
  /// Label values can be templatized by using variables. The only available
  /// variable names are the names of the labels in the PromQL result,
  /// although label names beginning with \_\_ (two "\_") are reserved for
  /// internal use. "labels" may be empty. This field is intended to be used
  /// for organizing and identifying the AlertPolicy.
  final pulumi.Input<Map<String, String>>? labels;
  /// The PromQL expression to evaluate. Every evaluation cycle this
  /// expression is evaluated at the current time, and all resultant time
  /// series become pending/firing alerts. This field must not be empty.
  final pulumi.Input<String> query;
  /// The rule group name of this alert in the corresponding Prometheus
  /// configuration file.
  /// Some external tools may require this field to be populated correctly
  /// in order to refer to the original Prometheus configuration file.
  /// The rule group name and the alert name are necessary to update the
  /// relevant AlertPolicies in case the definition of the rule group changes
  /// in the future. This field is optional.
  final pulumi.Input<String>? ruleGroup;

  /// Creates a new [AlertPolicyConditionConditionPrometheusQueryLanguage].
  /// [alertRule] The alerting rule name of this alert in the corresponding Prometheus
  /// [disableMetricValidation] Optional.
  /// [duration] Alerts are considered firing once their PromQL expression evaluated
  /// [evaluationInterval] How often this rule should be evaluated. Must be a positive multiple
  /// [labels] Labels to add to or overwrite in the PromQL query result. Label names
  /// [query] The PromQL expression to evaluate. Every evaluation cycle this
  /// [ruleGroup] The rule group name of this alert in the corresponding Prometheus
  AlertPolicyConditionConditionPrometheusQueryLanguage({
    this.alertRule,
    this.disableMetricValidation,
    this.duration,
    this.evaluationInterval,
    this.labels,
    required this.query,
    this.ruleGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRule': ?alertRule,
      'disableMetricValidation': ?disableMetricValidation,
      'duration': ?duration,
      'evaluationInterval': ?evaluationInterval,
      'labels': ?labels,
      'query': query,
      'ruleGroup': ?ruleGroup,
    };
  }

  factory AlertPolicyConditionConditionPrometheusQueryLanguage.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionPrometheusQueryLanguage(
      alertRule: map['alertRule'] == null ? null : (map['alertRule']! as String).input(),
      disableMetricValidation: map['disableMetricValidation'] == null ? null : (map['disableMetricValidation']! as bool).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      evaluationInterval: map['evaluationInterval'] == null ? null : (map['evaluationInterval']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      query: (map['query'] as String).input(),
      ruleGroup: map['ruleGroup'] == null ? null : (map['ruleGroup']! as String).input(),
    );
  }
}

