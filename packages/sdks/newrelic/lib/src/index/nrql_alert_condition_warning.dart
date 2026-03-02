// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nrql_alert_condition_warning_prediction.dart';

class NrqlAlertConditionWarning {
  /// Violations will not change system health status for this term.
  final pulumi.Input<bool>? disableHealthStatusReporting;
  /// In minutes, must be in the range of 1 to 120 (inclusive).
  final pulumi.Input<int>? duration;
  /// One of (above, above_or_equals, below, below_or_equals, equals, not_equals). Defaults to 'equals'.
  final pulumi.Input<String>? operator;
  /// BETA PREVIEW: the `prediction` field is in limited release and only enabled for preview on a per-account basis. - Use `prediction` to open alerts when your static threshold is predicted to be reached in the future. The `prediction` field is only available for static conditions.
  final pulumi.Input<NrqlAlertConditionWarningPrediction>? prediction;
  /// For baseline conditions must be in range [1, 1000].
  final pulumi.Input<double> threshold;
  /// The duration, in seconds, that the threshold must violate in order to create an incident. Value must be a multiple of the 'aggregation_window' (which has a default of 60 seconds). Value must be within 120-86400 seconds for baseline conditions, and within 60-86400 seconds for static conditions
  final pulumi.Input<int>? thresholdDuration;
  /// The criteria for how many data points must be in violation for the specified threshold duration. Valid values are: 'ALL' or 'AT_LEAST_ONCE' (case insensitive).
  final pulumi.Input<String>? thresholdOccurrences;
  /// Valid values are: 'all' or 'any'
  final pulumi.Input<String>? timeFunction;

  /// Creates a new [NrqlAlertConditionWarning].
  /// [disableHealthStatusReporting] Violations will not change system health status for this term.
  /// [duration] In minutes, must be in the range of 1 to 120 (inclusive).
  /// [operator] One of (above, above_or_equals, below, below_or_equals, equals, not_equals). Defaults to 'equals'.
  /// [prediction] BETA PREVIEW: the `prediction` field is in limited release and only enabled for preview on a per-account basis. - Use `prediction` to open alerts when your static threshold is predicted to be reached in the future. The `prediction` field is only available for static conditions.
  /// [threshold] For baseline conditions must be in range [1, 1000].
  /// [thresholdDuration] The duration, in seconds, that the threshold must violate in order to create an incident. Value must be a multiple of the 'aggregation_window' (which has a default of 60 seconds). Value must be within 120-86400 seconds for baseline conditions, and within 60-86400 seconds for static conditions
  /// [thresholdOccurrences] The criteria for how many data points must be in violation for the specified threshold duration. Valid values are: 'ALL' or 'AT_LEAST_ONCE' (case insensitive).
  /// [timeFunction] Valid values are: 'all' or 'any'
  NrqlAlertConditionWarning({
    this.disableHealthStatusReporting,
    this.duration,
    this.operator,
    this.prediction,
    required this.threshold,
    this.thresholdDuration,
    this.thresholdOccurrences,
    this.timeFunction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableHealthStatusReporting': ?disableHealthStatusReporting,
      'duration': ?duration,
      'operator': ?operator,
      'prediction': ?pulumi.Input.mapOptionalInputValue<NrqlAlertConditionWarningPrediction, Map<String, dynamic>>(prediction, (value) => value.toMap()),
      'threshold': threshold,
      'thresholdDuration': ?thresholdDuration,
      'thresholdOccurrences': ?thresholdOccurrences,
      'timeFunction': ?timeFunction,
    };
  }

  factory NrqlAlertConditionWarning.fromMap(Map<String, dynamic> map) {
    return NrqlAlertConditionWarning(
      disableHealthStatusReporting: map['disableHealthStatusReporting'] == null ? null : (map['disableHealthStatusReporting'] as bool).input(),
      duration: map['duration'] == null ? null : (map['duration'] as int).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      prediction: map['prediction'] == null ? null : (NrqlAlertConditionWarningPrediction.fromMap((map['prediction'] as Map).cast<String, dynamic>())).input(),
      threshold: (map['threshold'] as double).input(),
      thresholdDuration: map['thresholdDuration'] == null ? null : (map['thresholdDuration'] as int).input(),
      thresholdOccurrences: map['thresholdOccurrences'] == null ? null : (map['thresholdOccurrences'] as String).input(),
      timeFunction: map['timeFunction'] == null ? null : (map['timeFunction'] as String).input(),
    );
  }
}

