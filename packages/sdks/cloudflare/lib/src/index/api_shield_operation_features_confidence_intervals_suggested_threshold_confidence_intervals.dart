// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals_p90.dart';
import 'api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals_p95.dart';
import 'api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals_p99.dart';

class ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals {
  /// Upper and lower bound for percentile estimate
  final pulumi.Input<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP90?>? p90;
  /// Upper and lower bound for percentile estimate
  final pulumi.Input<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95?>? p95;
  /// Upper and lower bound for percentile estimate
  final pulumi.Input<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP99?>? p99;

  /// Creates a new [ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals].
  /// [p90] Upper and lower bound for percentile estimate
  /// [p95] Upper and lower bound for percentile estimate
  /// [p99] Upper and lower bound for percentile estimate
  const ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals({
    this.p90,
    this.p95,
    this.p99,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'p90': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP90, Map<String, dynamic>>(p90, (value) => value.toMap()),
      'p95': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95, Map<String, dynamic>>(p95, (value) => value.toMap()),
      'p99': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP99, Map<String, dynamic>>(p99, (value) => value.toMap()),
    };
  }

  factory ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals(
      p90: (() { final guardedValue = map['p90']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP90.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      p95: (() { final guardedValue = map['p95']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      p99: (() { final guardedValue = map['p99']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP99.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
