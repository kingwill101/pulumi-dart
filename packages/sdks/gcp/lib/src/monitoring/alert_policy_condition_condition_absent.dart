// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_condition_condition_absent_aggregation.dart';
import 'alert_policy_condition_condition_absent_trigger.dart';

class AlertPolicyConditionConditionAbsent {
  /// Specifies the alignment of data points in
  /// individual time series as well as how to
  /// combine the retrieved time series together
  /// (such as when aggregating multiple streams
  /// on each resource to a single stream for each
  /// resource or when aggregating streams across
  /// all members of a group of resources).
  /// Multiple aggregations are applied in the
  /// order specified.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyConditionConditionAbsentAggregation>>? aggregations;
  /// The amount of time that a time series must
  /// fail to report new data to be considered
  /// failing. Currently, only values that are a
  /// multiple of a minute--e.g. 60s, 120s, or 300s
  /// --are supported.
  final pulumi.Input<String> duration;
  /// A filter that identifies which time series
  /// should be compared with the threshold.The
  /// filter is similar to the one that is
  /// specified in the
  /// MetricService.ListTimeSeries request (that
  /// call is useful to verify the time series
  /// that will be retrieved / processed) and must
  /// specify the metric type and optionally may
  /// contain restrictions on resource type,
  /// resource labels, and metric labels. This
  /// field may not exceed 2048 Unicode characters
  /// in length.
  final pulumi.Input<String>? filter;
  /// The number/percent of time series for which
  /// the comparison must hold in order for the
  /// condition to trigger. If unspecified, then
  /// the condition will trigger if the comparison
  /// is true for any of the time series that have
  /// been identified by filter and aggregations.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionAbsentTrigger>? trigger;

  /// Creates a new [AlertPolicyConditionConditionAbsent].
  /// [aggregations] Specifies the alignment of data points in
  /// [duration] The amount of time that a time series must
  /// [filter] A filter that identifies which time series
  /// [trigger] The number/percent of time series for which
  AlertPolicyConditionConditionAbsent({
    this.aggregations,
    required this.duration,
    this.filter,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregations': ?pulumi.Input.mapOptionalInputValue<List<AlertPolicyConditionConditionAbsentAggregation>, List<Map<String, dynamic>>>(aggregations, (value) => pulumi.Input.encodeList<AlertPolicyConditionConditionAbsentAggregation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'duration': duration,
      'filter': ?filter,
      'trigger': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionAbsentTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory AlertPolicyConditionConditionAbsent.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionAbsent(
      aggregations: (() { final guardedValue = map['aggregations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertPolicyConditionConditionAbsentAggregation>(guardedValue, (value) => AlertPolicyConditionConditionAbsentAggregation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionAbsentTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

