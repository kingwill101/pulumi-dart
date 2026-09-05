// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_v2_criteria_dimension.dart';
import 'scheduled_query_rules_alert_v2_criteria_failing_periods.dart';

class ScheduledQueryRulesAlertV2Criteria {
  /// A `dimension` block as defined below.
  final pulumi.Input<List<ScheduledQueryRulesAlertV2CriteriaDimension>?>? dimensions;
  /// A `failingPeriods` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertV2CriteriaFailingPeriods?>? failingPeriods;
  /// Specifies the column containing the metric measure number.
  ///
  /// &gt; **Note:** `metricMeasureColumn` is required if `timeAggregationMethod` is `Average`, `Maximum`, `Minimum`, or `Total`. And `metricMeasureColumn` can not be specified if `timeAggregationMethod` is `Count`.
  final pulumi.Input<String?>? metricMeasureColumn;
  /// Specifies the criteria operator. Possible values are `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`,and `LessThanOrEqual`.
  final pulumi.Input<String> operator;
  /// The query to run on logs. The results returned by this query are used to populate the alert.
  final pulumi.Input<String> query;
  /// Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
  final pulumi.Input<String?>? resourceIdColumn;
  /// Specifies the criteria threshold value that activates the alert.
  final pulumi.Input<double> threshold;
  /// The type of aggregation to apply to the data points in aggregation granularity. Possible values are `Average`, `Count`, `Maximum`, `Minimum`,and `Total`.
  final pulumi.Input<String> timeAggregationMethod;

  /// Creates a new [ScheduledQueryRulesAlertV2Criteria].
  /// [dimensions] A `dimension` block as defined below.
  /// [failingPeriods] A `failingPeriods` block as defined below.
  /// [metricMeasureColumn] Specifies the column containing the metric measure number.
  /// [operator] Specifies the criteria operator. Possible values are `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`,and `LessThanOrEqual`.
  /// [query] The query to run on logs. The results returned by this query are used to populate the alert.
  /// [resourceIdColumn] Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
  /// [threshold] Specifies the criteria threshold value that activates the alert.
  /// [timeAggregationMethod] The type of aggregation to apply to the data points in aggregation granularity. Possible values are `Average`, `Count`, `Maximum`, `Minimum`,and `Total`.
  const ScheduledQueryRulesAlertV2Criteria({
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
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduledQueryRulesAlertV2CriteriaDimension>(guardedValue, (value) => ScheduledQueryRulesAlertV2CriteriaDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failingPeriods: (() { final guardedValue = map['failingPeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledQueryRulesAlertV2CriteriaFailingPeriods.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricMeasureColumn: (() { final guardedValue = map['metricMeasureColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
      resourceIdColumn: (() { final guardedValue = map['resourceIdColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: pulumi.Input.fromValue((map['threshold'] as num).toDouble()),
      timeAggregationMethod: pulumi.Input.fromValue(map['timeAggregationMethod'] as String),
    );
  }
}
