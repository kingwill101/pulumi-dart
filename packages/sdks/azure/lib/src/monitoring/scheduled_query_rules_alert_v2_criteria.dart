// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_v2_criteria_dimension.dart';
import 'scheduled_query_rules_alert_v2_criteria_failing_periods.dart';

class ScheduledQueryRulesAlertV2Criteria {
  /// A `dimension` block as defined below.
  final List<ScheduledQueryRulesAlertV2CriteriaDimension>? dimensions;
  /// A `failing_periods` block as defined below.
  final ScheduledQueryRulesAlertV2CriteriaFailingPeriods? failingPeriods;
  /// Specifies the column containing the metric measure number.
  ///
  /// > **Note:** `metric_measure_column` is required if `time_aggregation_method` is `Average`, `Maximum`, `Minimum`, or `Total`. And `metric_measure_column` can not be specified if `time_aggregation_method` is `Count`.
  final String? metricMeasureColumn;
  /// Specifies the criteria operator. Possible values are `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`,and `LessThanOrEqual`.
  final String operator;
  /// The query to run on logs. The results returned by this query are used to populate the alert.
  final String query;
  /// Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
  final String? resourceIdColumn;
  /// Specifies the criteria threshold value that activates the alert.
  final double threshold;
  /// The type of aggregation to apply to the data points in aggregation granularity. Possible values are `Average`, `Count`, `Maximum`, `Minimum`,and `Total`.
  final String timeAggregationMethod;

  /// Creates a new [ScheduledQueryRulesAlertV2Criteria].
  /// [dimensions] A `dimension` block as defined below.
  /// [failingPeriods] A `failing_periods` block as defined below.
  /// [metricMeasureColumn] Specifies the column containing the metric measure number.
  /// [operator] Specifies the criteria operator. Possible values are `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`,and `LessThanOrEqual`.
  /// [query] The query to run on logs. The results returned by this query are used to populate the alert.
  /// [resourceIdColumn] Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
  /// [threshold] Specifies the criteria threshold value that activates the alert.
  /// [timeAggregationMethod] The type of aggregation to apply to the data points in aggregation granularity. Possible values are `Average`, `Count`, `Maximum`, `Minimum`,and `Total`.
  ScheduledQueryRulesAlertV2Criteria({
    this.dimensions,
    this.failingPeriods,
    this.metricMeasureColumn,
    required this.operator,
    required this.query,
    this.resourceIdColumn,
    required this.threshold,
    required this.timeAggregationMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<ScheduledQueryRulesAlertV2CriteriaDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'failingPeriods': ?failingPeriods == null ? null : failingPeriods!.toMap(),
      'metricMeasureColumn': ?metricMeasureColumn,
      'operator': operator,
      'query': query,
      'resourceIdColumn': ?resourceIdColumn,
      'threshold': threshold,
      'timeAggregationMethod': timeAggregationMethod,
    };
  }

  factory ScheduledQueryRulesAlertV2Criteria.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2Criteria(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<ScheduledQueryRulesAlertV2CriteriaDimension>(map['dimensions'], (value) => ScheduledQueryRulesAlertV2CriteriaDimension.fromMap((value as Map).cast<String, dynamic>())),
      failingPeriods: map['failingPeriods'] == null ? null : ScheduledQueryRulesAlertV2CriteriaFailingPeriods.fromMap((map['failingPeriods'] as Map).cast<String, dynamic>()),
      metricMeasureColumn: map['metricMeasureColumn'] == null ? null : map['metricMeasureColumn'] as String,
      operator: map['operator'] as String,
      query: map['query'] as String,
      resourceIdColumn: map['resourceIdColumn'] == null ? null : map['resourceIdColumn'] as String,
      threshold: map['threshold'] as double,
      timeAggregationMethod: map['timeAggregationMethod'] as String,
    );
  }
}

