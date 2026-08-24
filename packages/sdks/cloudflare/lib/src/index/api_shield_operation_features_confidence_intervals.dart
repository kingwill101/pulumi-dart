// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_features_confidence_intervals_suggested_threshold.dart';

class ApiShieldOperationFeaturesConfidenceIntervals {
  final pulumi.Input<String?>? lastUpdated;
  final pulumi.Input<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold?>? suggestedThreshold;

  /// Creates a new [ApiShieldOperationFeaturesConfidenceIntervals].
  /// [lastUpdated] Optional.
  /// [suggestedThreshold] Optional.
  const ApiShieldOperationFeaturesConfidenceIntervals({
    this.lastUpdated,
    this.suggestedThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': ?lastUpdated,
      'suggestedThreshold': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold, Map<String, dynamic>>(suggestedThreshold, (value) => value.toMap()),
    };
  }

  factory ApiShieldOperationFeaturesConfidenceIntervals.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesConfidenceIntervals(
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suggestedThreshold: (() { final guardedValue = map['suggestedThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
