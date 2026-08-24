// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operation_features_confidence_intervals_suggested_threshold.dart';

class GetApiShieldOperationFeaturesConfidenceIntervals {
  final pulumi.Input<String> lastUpdated;
  final pulumi.Input<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold> suggestedThreshold;

  /// Creates a new [GetApiShieldOperationFeaturesConfidenceIntervals].
  /// [lastUpdated] Required.
  /// [suggestedThreshold] Required.
  const GetApiShieldOperationFeaturesConfidenceIntervals({
    required this.lastUpdated,
    required this.suggestedThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'suggestedThreshold': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold, Map<String, dynamic>>(suggestedThreshold, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationFeaturesConfidenceIntervals.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesConfidenceIntervals(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      suggestedThreshold: pulumi.Input.fromValue(GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold.fromMap((map['suggestedThreshold']! as Map).cast<String, dynamic>())),
    );
  }
}
