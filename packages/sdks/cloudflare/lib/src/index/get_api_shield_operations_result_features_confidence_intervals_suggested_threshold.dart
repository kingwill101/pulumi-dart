// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result_features_confidence_intervals_suggested_threshold_confidence_intervals.dart';

class GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold {
  final pulumi.Input<GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals> confidenceIntervals;
  /// Suggested threshold.
  final pulumi.Input<double> mean;

  /// Creates a new [GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold].
  /// [confidenceIntervals] Required.
  /// [mean] Suggested threshold.
  const GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold({
    required this.confidenceIntervals,
    required this.mean,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceIntervals': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals, Map<String, dynamic>>(confidenceIntervals, (value) => value.toMap()),
      'mean': mean,
    };
  }

  factory GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold(
      confidenceIntervals: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervals.fromMap((map['confidenceIntervals']! as Map).cast<String, dynamic>())),
      mean: pulumi.Input.fromValue((map['mean'] as num).toDouble()),
    );
  }
}
