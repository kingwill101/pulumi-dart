// ignore_for_file: unused_element, unnecessary_cast


class ScheduledQueryRulesAlertTriggerMetricTrigger {
  /// Evaluation of metric on a particular column.
  final String? metricColumn;
  /// Metric Trigger Type - 'Consecutive' or 'Total'.
  final String metricTriggerType;
  /// Evaluation operation for rule - 'Equal', 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
  final String operator;
  /// The threshold of the metric trigger. Values must be between 0 and 10000 inclusive.
  final double threshold;

  /// Creates a new [ScheduledQueryRulesAlertTriggerMetricTrigger].
  /// [metricColumn] Evaluation of metric on a particular column.
  /// [metricTriggerType] Metric Trigger Type - 'Consecutive' or 'Total'.
  /// [operator] Evaluation operation for rule - 'Equal', 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
  /// [threshold] The threshold of the metric trigger. Values must be between 0 and 10000 inclusive.
  ScheduledQueryRulesAlertTriggerMetricTrigger({
    this.metricColumn,
    required this.metricTriggerType,
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricColumn': ?metricColumn,
      'metricTriggerType': metricTriggerType,
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory ScheduledQueryRulesAlertTriggerMetricTrigger.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertTriggerMetricTrigger(
      metricColumn: map['metricColumn'] == null ? null : map['metricColumn'] as String,
      metricTriggerType: map['metricTriggerType'] as String,
      operator: map['operator'] as String,
      threshold: map['threshold'] as double,
    );
  }
}

