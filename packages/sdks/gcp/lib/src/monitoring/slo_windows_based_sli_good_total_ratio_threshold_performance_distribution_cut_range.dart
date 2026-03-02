// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange {
  /// max value for the range (inclusive). If not given,
  /// will be set to "infinity", defining an open range
  /// ">= range.min"
  final pulumi.Input<double>? max;
  /// Min value for the range (inclusive). If not given,
  /// will be set to "-infinity", defining an open range
  /// "< range.max"
  final pulumi.Input<double>? min;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange].
  /// [max] max value for the range (inclusive). If not given,
  /// [min] Min value for the range (inclusive). If not given,
  SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange(
      max: map['max'] == null ? null : (map['max']! as double).input(),
      min: map['min'] == null ? null : (map['min']! as double).input(),
    );
  }
}

