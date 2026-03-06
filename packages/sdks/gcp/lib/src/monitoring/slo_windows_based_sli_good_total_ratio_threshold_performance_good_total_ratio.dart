// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// quantifying bad service provided, either demanded service that
  /// was not provided or demanded service that was of inadequate
  /// quality. Exactly two of
  /// good, bad, or total service filter must be defined (where
  /// good + bad = total is assumed)
  /// Must have ValueType = DOUBLE or ValueType = INT64 and
  /// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final pulumi.Input<String>? badServiceFilter;
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// quantifying good service provided. Exactly two of
  /// good, bad, or total service filter must be defined (where
  /// good + bad = total is assumed)
  /// Must have ValueType = DOUBLE or ValueType = INT64 and
  /// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final pulumi.Input<String>? goodServiceFilter;
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// quantifying total demanded service. Exactly two of
  /// good, bad, or total service filter must be defined (where
  /// good + bad = total is assumed)
  /// Must have ValueType = DOUBLE or ValueType = INT64 and
  /// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final pulumi.Input<String>? totalServiceFilter;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio].
  /// [badServiceFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// [goodServiceFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// [totalServiceFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  const SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio({
    this.badServiceFilter,
    this.goodServiceFilter,
    this.totalServiceFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'badServiceFilter': ?badServiceFilter,
      'goodServiceFilter': ?goodServiceFilter,
      'totalServiceFilter': ?totalServiceFilter,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio(
      badServiceFilter: (() { final guardedValue = map['badServiceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goodServiceFilter: (() { final guardedValue = map['goodServiceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalServiceFilter: (() { final guardedValue = map['totalServiceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

