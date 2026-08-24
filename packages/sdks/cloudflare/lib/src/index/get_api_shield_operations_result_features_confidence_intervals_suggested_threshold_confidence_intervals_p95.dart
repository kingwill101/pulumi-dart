// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95 {
  /// Lower bound for percentile estimate
  final pulumi.Input<double> lower;
  /// Upper bound for percentile estimate
  final pulumi.Input<double> upper;

  /// Creates a new [GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95].
  /// [lower] Lower bound for percentile estimate
  /// [upper] Upper bound for percentile estimate
  const GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95({
    required this.lower,
    required this.upper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lower': lower,
      'upper': upper,
    };
  }

  factory GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesConfidenceIntervalsSuggestedThresholdConfidenceIntervalsP95(
      lower: pulumi.Input.fromValue((map['lower'] as num).toDouble()),
      upper: pulumi.Input.fromValue((map['upper'] as num).toDouble()),
    );
  }
}
