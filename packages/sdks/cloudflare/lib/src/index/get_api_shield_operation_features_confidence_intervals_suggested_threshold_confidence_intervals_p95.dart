// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95 {
  /// Lower bound for percentile estimate
  final pulumi.Input<double> lower;
  /// Upper bound for percentile estimate
  final pulumi.Input<double> upper;

  /// Creates a new [GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95].
  /// [lower] Lower bound for percentile estimate
  /// [upper] Upper bound for percentile estimate
  const GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95({
    required this.lower,
    required this.upper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lower': lower,
      'upper': upper,
    };
  }

  factory GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95(
      lower: pulumi.Input.fromValue((map['lower'] as num).toDouble()),
      upper: pulumi.Input.fromValue((map['upper'] as num).toDouble()),
    );
  }
}
