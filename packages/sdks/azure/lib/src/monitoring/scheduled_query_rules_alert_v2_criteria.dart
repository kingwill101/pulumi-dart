// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_v2_criteria_dimension.dart';
import 'scheduled_query_rules_alert_v2_criteria_failing_periods.dart';

class ScheduledQueryRulesAlertV2Criteria {
  /// A `dimension` block as defined below.
  final pulumi.Input<List<ScheduledQueryRulesAlertV2CriteriaDimension>>? dimensions;
  /// A `failing_periods` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertV2CriteriaFailingPeriods>? failingPeriods;
  /// Specifies the column containing the metric measure number.
  ///
  /// > **Note:** `metric_measure_column` is required if `time_aggregation_method` is `Average`, `Maximum`, `Minimum`, or `Total`. And `metric_measure_column` can not be specified if `time_aggregation_method` is `Count`.
  final pulumi.Input<String>? metricMeasureColumn;
  /// Specifies the criteria operator. Possible values are `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`,and `LessThanOrEqual`.
  final pulumi.Input<String> operator;
  /// The query to run on logs. The results returned by this query are used to populate the alert.
  final pulumi.Input<String> query;
  /// Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
  final pulumi.Input<String>? resourceIdColumn;
  /// Specifies the criteria threshold value that activates the alert.
  final pulumi.Input<double> threshold;
  /// The type of aggregation to apply to the data points in aggregation granularity. Possible values are `Average`, `Count`, `Maximum`, `Minimum`,and `Total`.
  final pulumi.Input<String> timeAggregationMethod;

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
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<ScheduledQueryRulesAlertV2CriteriaDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<ScheduledQueryRulesAlertV2CriteriaDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failingPeriods': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryRulesAlertV2CriteriaFailingPeriods, Map<String, dynamic>>(failingPeriods, (value) => value.toMap()),
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
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<ScheduledQueryRulesAlertV2CriteriaDimension>(map['dimensions'], (value) => ScheduledQueryRulesAlertV2CriteriaDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failingPeriods: map['failingPeriods'] == null ? null : (ScheduledQueryRulesAlertV2CriteriaFailingPeriods.fromMap((map['failingPeriods'] as Map).cast<String, dynamic>())).input(),
      metricMeasureColumn: map['metricMeasureColumn'] == null ? null : (map['metricMeasureColumn'] as String).input(),
      operator: (map['operator'] as String).input(),
      query: (map['query'] as String).input(),
      resourceIdColumn: map['resourceIdColumn'] == null ? null : (map['resourceIdColumn'] as String).input(),
      threshold: (map['threshold'] as double).input(),
      timeAggregationMethod: (map['timeAggregationMethod'] as String).input(),
    );
  }
}

