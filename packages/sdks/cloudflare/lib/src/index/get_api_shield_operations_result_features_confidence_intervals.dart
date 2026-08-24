// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result_features_confidence_intervals_suggested_threshold.dart';

class GetApiShieldOperationsResultFeaturesConfidenceIntervals {
  final pulumi.Input<String> lastUpdated;
  final pulumi.Input<GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold> suggestedThreshold;

  /// Creates a new [GetApiShieldOperationsResultFeaturesConfidenceIntervals].
  /// [lastUpdated] Required.
  /// [suggestedThreshold] Required.
  const GetApiShieldOperationsResultFeaturesConfidenceIntervals({
    required this.lastUpdated,
    required this.suggestedThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'suggestedThreshold': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold, Map<String, dynamic>>(suggestedThreshold, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationsResultFeaturesConfidenceIntervals.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesConfidenceIntervals(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      suggestedThreshold: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThreshold.fromMap((map['suggestedThreshold']! as Map).cast<String, dynamic>())),
    );
  }
}
