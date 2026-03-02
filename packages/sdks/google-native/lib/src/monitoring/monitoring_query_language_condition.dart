// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_query_language_condition_evaluation_missing_data.dart';
import 'trigger.dart';

/// A condition type that allows alert policies to be defined using Monitoring Query Language (https://cloud.google.com/monitoring/mql).
class MonitoringQueryLanguageCondition {
  /// The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  final pulumi.Input<String>? duration;
  /// A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  final pulumi.Input<MonitoringQueryLanguageConditionEvaluationMissingData>? evaluationMissingData;
  /// Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that outputs a boolean stream.
  final pulumi.Input<String>? query;
  /// The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  final pulumi.Input<Trigger>? trigger;

  /// Creates a new [MonitoringQueryLanguageCondition].
  /// [duration] The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  /// [evaluationMissingData] A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  /// [query] Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that outputs a boolean stream.
  /// [trigger] The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  MonitoringQueryLanguageCondition({
    this.duration,
    this.evaluationMissingData,
    this.query,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'evaluationMissingData': ?pulumi.Input.mapOptionalInputValue<MonitoringQueryLanguageConditionEvaluationMissingData, String>(evaluationMissingData, (value) => value.value),
      'query': ?query,
      'trigger': ?pulumi.Input.mapOptionalInputValue<Trigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory MonitoringQueryLanguageCondition.fromMap(Map<String, dynamic> map) {
    return MonitoringQueryLanguageCondition(
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      evaluationMissingData: map['evaluationMissingData'] == null ? null : (MonitoringQueryLanguageConditionEvaluationMissingData.fromValue(map['evaluationMissingData'] as String)).input(),
      query: map['query'] == null ? null : (map['query'] as String).input(),
      trigger: map['trigger'] == null ? null : (Trigger.fromMap((map['trigger'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

