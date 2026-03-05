// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange {
  /// max value for the range (inclusive). If not given,
  /// will be set to "infinity", defining an open range
  /// "&gt;= range.min"
  final pulumi.Input<double>? max;
  /// Min value for the range (inclusive). If not given,
  /// will be set to "-infinity", defining an open range
  /// "&lt; range.max"
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
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

