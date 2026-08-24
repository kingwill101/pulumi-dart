// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95 {
  /// Lower bound for percentile estimate
  final pulumi.Input<double?>? lower;
  /// Upper bound for percentile estimate
  final pulumi.Input<double?>? upper;

  /// Creates a new [ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95].
  /// [lower] Lower bound for percentile estimate
  /// [upper] Upper bound for percentile estimate
  const ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95({
    this.lower,
    this.upper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lower': ?lower,
      'upper': ?upper,
    };
  }

  factory ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95(
      lower: (() { final guardedValue = map['lower']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      upper: (() { final guardedValue = map['upper']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
