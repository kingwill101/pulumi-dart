// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals.dart';

class ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold {
  final pulumi.Input<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals?>? confidenceIntervals;
  /// Suggested threshold.
  final pulumi.Input<double?>? mean;

  /// Creates a new [ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold].
  /// [confidenceIntervals] Optional.
  /// [mean] Suggested threshold.
  const ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold({
    this.confidenceIntervals,
    this.mean,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceIntervals': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals, Map<String, dynamic>>(confidenceIntervals, (value) => value.toMap()),
      'mean': ?mean,
    };
  }

  factory ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold(
      confidenceIntervals: (() { final guardedValue = map['confidenceIntervals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mean: (() { final guardedValue = map['mean']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
