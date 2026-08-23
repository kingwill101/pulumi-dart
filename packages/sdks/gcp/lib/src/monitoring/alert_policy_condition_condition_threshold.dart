// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_condition_condition_threshold_aggregation.dart';
import 'alert_policy_condition_condition_threshold_denominator_aggregation.dart';
import 'alert_policy_condition_condition_threshold_forecast_options.dart';
import 'alert_policy_condition_condition_threshold_trigger.dart';

class AlertPolicyConditionConditionThreshold {
  /// Specifies the alignment of data points in
  /// individual time series as well as how to
  /// combine the retrieved time series together
  /// (such as when aggregating multiple streams
  /// on each resource to a single stream for each
  /// resource or when aggregating streams across
  /// all members of a group of resources).
  /// Multiple aggregations are applied in the
  /// order specified.This field is similar to the
  /// one in the MetricService.ListTimeSeries
  /// request. It is advisable to use the
  /// ListTimeSeries method when debugging this
  /// field.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyConditionConditionThresholdAggregation>>? aggregations;
  /// The comparison to apply between the time series
  /// (indicated by filter and aggregation) and the threshold
  /// (indicated by threshold_value). The comparison is
  /// applied on each time series, with the time series on
  /// the left-hand side and the threshold on the right-hand
  /// side.
  /// The Cloud Monitoring API only supports `COMPARISON_LT`
  /// and `COMPARISON_GT` for metric-threshold conditions; the
  /// other values are kept in the schema for backward
  /// compatibility with imported state but will be rejected
  /// by the API. See
  /// https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.alertPolicies#MetricThreshold.
  /// Possible values are: `COMPARISON_GT`, `COMPARISON_GE`, `COMPARISON_LT`, `COMPARISON_LE`, `COMPARISON_EQ`, `COMPARISON_NE`.
  final pulumi.Input<String> comparison;
  /// Specifies the alignment of data points in
  /// individual time series selected by
  /// denominatorFilter as well as how to combine
  /// the retrieved time series together (such as
  /// when aggregating multiple streams on each
  /// resource to a single stream for each
  /// resource or when aggregating streams across
  /// all members of a group of resources).When
  /// computing ratios, the aggregations and
  /// denominatorAggregations fields must use the
  /// same alignment period and produce time
  /// series that have the same periodicity and
  /// labels.This field is similar to the one in
  /// the MetricService.ListTimeSeries request. It
  /// is advisable to use the ListTimeSeries
  /// method when debugging this field.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyConditionConditionThresholdDenominatorAggregation>>? denominatorAggregations;
  /// A filter that identifies a time series that
  /// should be used as the denominator of a ratio
  /// that will be compared with the threshold. If
  /// a denominatorFilter is specified, the time
  /// series specified by the filter field will be
  /// used as the numerator.The filter is similar
  /// to the one that is specified in the
  /// MetricService.ListTimeSeries request (that
  /// call is useful to verify the time series
  /// that will be retrieved / processed) and must
  /// specify the metric type and optionally may
  /// contain restrictions on resource type,
  /// resource labels, and metric labels. This
  /// field may not exceed 2048 Unicode characters
  /// in length.
  final pulumi.Input<String>? denominatorFilter;
  /// The amount of time that a time series must
  /// violate the threshold to be considered
  /// failing. Currently, only values that are a
  /// multiple of a minute--e.g., 0, 60, 120, or
  /// 300 seconds--are supported. If an invalid
  /// value is given, an error will be returned.
  /// When choosing a duration, it is useful to
  /// keep in mind the frequency of the underlying
  /// time series data (which may also be affected
  /// by any alignments specified in the
  /// aggregations field); a good duration is long
  /// enough so that a single outlier does not
  /// generate spurious alerts, but short enough
  /// that unhealthy states are detected and
  /// alerted on quickly.
  final pulumi.Input<String> duration;
  /// A condition control that determines how
  /// metric-threshold conditions are evaluated when
  /// data stops arriving.
  /// Possible values are: `EVALUATION_MISSING_DATA_INACTIVE`, `EVALUATION_MISSING_DATA_ACTIVE`, `EVALUATION_MISSING_DATA_NO_OP`.
  final pulumi.Input<String>? evaluationMissingData;
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
  /// When this field is present, the `MetricThreshold`
  /// condition forecasts whether the time series is
  /// predicted to violate the threshold within the
  /// `forecastHorizon`. When this field is not set, the
  /// `MetricThreshold` tests the current value of the
  /// timeseries against the threshold.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionThresholdForecastOptions>? forecastOptions;
  /// A value against which to compare the time
  /// series.
  final pulumi.Input<double>? thresholdValue;
  /// The number/percent of time series for which
  /// the comparison must hold in order for the
  /// condition to trigger. If unspecified, then
  /// the condition will trigger if the comparison
  /// is true for any of the time series that have
  /// been identified by filter and aggregations,
  /// or by the ratio, if denominatorFilter and
  /// denominatorAggregations are specified.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionThresholdTrigger>? trigger;

  /// Creates a new [AlertPolicyConditionConditionThreshold].
  /// [aggregations] Specifies the alignment of data points in
  /// [comparison] The comparison to apply between the time series
  /// [denominatorAggregations] Specifies the alignment of data points in
  /// [denominatorFilter] A filter that identifies a time series that
  /// [duration] The amount of time that a time series must
  /// [evaluationMissingData] A condition control that determines how
  /// [filter] A filter that identifies which time series
  /// [forecastOptions] When this field is present, the `MetricThreshold`
  /// [thresholdValue] A value against which to compare the time
  /// [trigger] The number/percent of time series for which
  const AlertPolicyConditionConditionThreshold({
    this.aggregations,
    required this.comparison,
    this.denominatorAggregations,
    this.denominatorFilter,
    required this.duration,
    this.evaluationMissingData,
    this.filter,
    this.forecastOptions,
    this.thresholdValue,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregations': ?pulumi.Input.mapOptionalInputValue<List<AlertPolicyConditionConditionThresholdAggregation>, List<Map<String, dynamic>>>(aggregations, (value) => pulumi.Input.encodeList<AlertPolicyConditionConditionThresholdAggregation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'comparison': comparison,
      'denominatorAggregations': ?pulumi.Input.mapOptionalInputValue<List<AlertPolicyConditionConditionThresholdDenominatorAggregation>, List<Map<String, dynamic>>>(denominatorAggregations, (value) => pulumi.Input.encodeList<AlertPolicyConditionConditionThresholdDenominatorAggregation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'denominatorFilter': ?denominatorFilter,
      'duration': duration,
      'evaluationMissingData': ?evaluationMissingData,
      'filter': ?filter,
      'forecastOptions': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionThresholdForecastOptions, Map<String, dynamic>>(forecastOptions, (value) => value.toMap()),
      'thresholdValue': ?thresholdValue,
      'trigger': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionThresholdTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory AlertPolicyConditionConditionThreshold.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionThreshold(
      aggregations: (() { final guardedValue = map['aggregations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertPolicyConditionConditionThresholdAggregation>(guardedValue, (value) => AlertPolicyConditionConditionThresholdAggregation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      denominatorAggregations: (() { final guardedValue = map['denominatorAggregations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertPolicyConditionConditionThresholdDenominatorAggregation>(guardedValue, (value) => AlertPolicyConditionConditionThresholdDenominatorAggregation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      denominatorFilter: (() { final guardedValue = map['denominatorFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      evaluationMissingData: (() { final guardedValue = map['evaluationMissingData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forecastOptions: (() { final guardedValue = map['forecastOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionThresholdForecastOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thresholdValue: (() { final guardedValue = map['thresholdValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionThresholdTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
