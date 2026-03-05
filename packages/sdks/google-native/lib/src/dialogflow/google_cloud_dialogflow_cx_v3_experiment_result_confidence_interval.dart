// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A confidence interval is a range of possible values for the experiment objective you are trying to measure.
class GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval {
  /// The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.
  final pulumi.Input<double>? confidenceLevel;
  /// Lower bound of the interval.
  final pulumi.Input<double>? lowerBound;
  /// The percent change between an experiment metric's value and the value for its control.
  final pulumi.Input<double>? ratio;
  /// Upper bound of the interval.
  final pulumi.Input<double>? upperBound;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval].
  /// [confidenceLevel] The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.
  /// [lowerBound] Lower bound of the interval.
  /// [ratio] The percent change between an experiment metric's value and the value for its control.
  /// [upperBound] Upper bound of the interval.
  GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval({
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

  factory GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval(
      confidenceLevel: (() { final guardedValue = map['confidenceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      lowerBound: (() { final guardedValue = map['lowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      ratio: (() { final guardedValue = map['ratio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      upperBound: (() { final guardedValue = map['upperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

