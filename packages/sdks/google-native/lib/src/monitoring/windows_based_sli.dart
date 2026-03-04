// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_range.dart';
import 'performance_threshold.dart';

/// A WindowsBasedSli defines good_service as the count of time windows for which the provided service was of good quality. Criteria for determining if service was good are embedded in the window_criterion.
class WindowsBasedSli {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries with ValueType = BOOL. The window is good if any true values appear in the window.
  final pulumi.Input<String>? goodBadMetricFilter;

  /// A window is good if its performance is high enough.
  final pulumi.Input<PerformanceThreshold>? goodTotalRatioThreshold;

  /// A window is good if the metric's value is in a good range, averaged across returned streams.
  final pulumi.Input<MetricRange>? metricMeanInRange;

  /// A window is good if the metric's value is in a good range, summed across returned streams.
  final pulumi.Input<MetricRange>? metricSumInRange;

  /// Duration over which window quality is evaluated. Must be an integer fraction of a day and at least 60s.
  final pulumi.Input<String>? windowPeriod;

  /// Creates a new [WindowsBasedSli].
  /// [goodBadMetricFilter] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries with ValueType = BOOL. The window is good if any true values appear in the window.
  /// [goodTotalRatioThreshold] A window is good if its performance is high enough.
  /// [metricMeanInRange] A window is good if the metric's value is in a good range, averaged across returned streams.
  /// [metricSumInRange] A window is good if the metric's value is in a good range, summed across returned streams.
  /// [windowPeriod] Duration over which window quality is evaluated. Must be an integer fraction of a day and at least 60s.
  WindowsBasedSli({
    this.goodBadMetricFilter,
    this.goodTotalRatioThreshold,
    this.metricMeanInRange,
    this.metricSumInRange,
    this.windowPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goodBadMetricFilter': ?goodBadMetricFilter,
      'goodTotalRatioThreshold':
          ?pulumi.Input.mapOptionalInputValue<
            PerformanceThreshold,
            Map<String, dynamic>
          >(goodTotalRatioThreshold, (value) => value.toMap()),
      'metricMeanInRange':
          ?pulumi.Input.mapOptionalInputValue<
            MetricRange,
            Map<String, dynamic>
          >(metricMeanInRange, (value) => value.toMap()),
      'metricSumInRange':
          ?pulumi.Input.mapOptionalInputValue<
            MetricRange,
            Map<String, dynamic>
          >(metricSumInRange, (value) => value.toMap()),
      'windowPeriod': ?windowPeriod,
    };
  }

  factory WindowsBasedSli.fromMap(Map<String, dynamic> map) {
    return WindowsBasedSli(
      goodBadMetricFilter: (() {
        final guardedValue = map['goodBadMetricFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      goodTotalRatioThreshold: (() {
        final guardedValue = map['goodTotalRatioThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PerformanceThreshold.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      metricMeanInRange: (() {
        final guardedValue = map['metricMeanInRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetricRange.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      metricSumInRange: (() {
        final guardedValue = map['metricSumInRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetricRange.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      windowPeriod: (() {
        final guardedValue = map['windowPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
