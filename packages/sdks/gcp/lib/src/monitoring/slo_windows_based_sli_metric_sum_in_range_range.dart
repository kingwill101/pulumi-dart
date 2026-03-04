// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SloWindowsBasedSliMetricSumInRangeRange {
  /// max value for the range (inclusive). If not given,
  /// will be set to "infinity", defining an open range
  /// "&gt;= range.min"
  final pulumi.Input<double>? max;

  /// Min value for the range (inclusive). If not given,
  /// will be set to "-infinity", defining an open range
  /// "&lt; range.max"
  final pulumi.Input<double>? min;

  /// Creates a new [SloWindowsBasedSliMetricSumInRangeRange].
  /// [max] max value for the range (inclusive). If not given,
  /// [min] Min value for the range (inclusive). If not given,
  SloWindowsBasedSliMetricSumInRangeRange({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory SloWindowsBasedSliMetricSumInRangeRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return SloWindowsBasedSliMetricSumInRangeRange(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      min: (() {
        final guardedValue = map['min'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
