// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals_p90.dart';
import 'get_api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals_p95.dart';
import 'get_api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals_p99.dart';

class GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals {
  /// Upper and lower bound for percentile estimate
  final pulumi.Input<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP90> p90;
  /// Upper and lower bound for percentile estimate
  final pulumi.Input<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95> p95;
  /// Upper and lower bound for percentile estimate
  final pulumi.Input<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP99> p99;

  /// Creates a new [GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals].
  /// [p90] Upper and lower bound for percentile estimate
  /// [p95] Upper and lower bound for percentile estimate
  /// [p99] Upper and lower bound for percentile estimate
  const GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals({
    required this.p90,
    required this.p95,
    required this.p99,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'p90': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP90, Map<String, dynamic>>(p90, (value) => value.toMap()),
      'p95': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95, Map<String, dynamic>>(p95, (value) => value.toMap()),
      'p99': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP99, Map<String, dynamic>>(p99, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals(
      p90: pulumi.Input.fromValue(GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP90.fromMap((map['p90']! as Map).cast<String, dynamic>())),
      p95: pulumi.Input.fromValue(GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95.fromMap((map['p95']! as Map).cast<String, dynamic>())),
      p99: pulumi.Input.fromValue(GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP99.fromMap((map['p99']! as Map).cast<String, dynamic>())),
    );
  }
}
