// ignore_for_file: unused_element, unnecessary_cast


/// A confidence interval is a range of possible values for the experiment objective you are trying to measure.
class GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval {
  /// The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.
  final double? confidenceLevel;
  /// Lower bound of the interval.
  final double? lowerBound;
  /// The percent change between an experiment metric's value and the value for its control.
  final double? ratio;
  /// Upper bound of the interval.
  final double? upperBound;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval].
  /// [confidenceLevel] The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.
  /// [lowerBound] Lower bound of the interval.
  /// [ratio] The percent change between an experiment metric's value and the value for its control.
  /// [upperBound] Upper bound of the interval.
  GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval({
    this.confidenceLevel,
    this.lowerBound,
    this.ratio,
    this.upperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': ?confidenceLevel,
      'lowerBound': ?lowerBound,
      'ratio': ?ratio,
      'upperBound': ?upperBound,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval(
      confidenceLevel: map['confidenceLevel'] == null ? null : map['confidenceLevel'] as double,
      lowerBound: map['lowerBound'] == null ? null : map['lowerBound'] as double,
      ratio: map['ratio'] == null ? null : map['ratio'] as double,
      upperBound: map['upperBound'] == null ? null : map['upperBound'] as double,
    );
  }
}

