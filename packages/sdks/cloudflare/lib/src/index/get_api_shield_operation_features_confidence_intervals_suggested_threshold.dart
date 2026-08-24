// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operation_features_confidence_intervals_suggested_threshold_confidence_intervals.dart';

class GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold {
  final pulumi.Input<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals> confidenceIntervals;
  /// Suggested threshold.
  final pulumi.Input<double> mean;

  /// Creates a new [GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold].
  /// [confidenceIntervals] Required.
  /// [mean] Suggested threshold.
  const GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold({
    required this.confidenceIntervals,
    required this.mean,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceIntervals': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals, Map<String, dynamic>>(confidenceIntervals, (value) => value.toMap()),
      'mean': mean,
    };
  }

  factory GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold(
      confidenceIntervals: pulumi.Input.fromValue(GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals.fromMap((map['confidenceIntervals']! as Map).cast<String, dynamic>())),
      mean: pulumi.Input.fromValue((map['mean'] as num).toDouble()),
    );
  }
}
