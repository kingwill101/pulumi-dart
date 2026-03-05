// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_windows_based_sli_good_total_ratio_threshold.dart';
import 'slo_windows_based_sli_metric_mean_in_range.dart';
import 'slo_windows_based_sli_metric_sum_in_range.dart';

class SloWindowsBasedSli {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// with ValueType = BOOL. The window is good if any true values
  /// appear in the window. One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  final pulumi.Input<String>? goodBadMetricFilter;
  /// Criterion that describes a window as good if its performance is
  /// high enough. One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliGoodTotalRatioThreshold>? goodTotalRatioThreshold;
  /// Criterion that describes a window as good if the metric's value
  /// is in a good range, *averaged* across returned streams.
  /// One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  /// Average value X of `time_series` should satisfy
  /// `range.min &lt;= X &lt;= range.max` for a good window.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliMetricMeanInRange>? metricMeanInRange;
  /// Criterion that describes a window as good if the metric's value
  /// is in a good range, *summed* across returned streams.
  /// Summed value `X` of `time_series` should satisfy
  /// `range.min &lt;= X &lt;= range.max` for a good window.
  /// One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliMetricSumInRange>? metricSumInRange;
  /// Duration over which window quality is evaluated, given as a
  /// duration string "{X}s" representing X seconds. Must be an
  /// integer fraction of a day and at least 60s.
  final pulumi.Input<String>? windowPeriod;

  /// Creates a new [SloWindowsBasedSli].
  /// [goodBadMetricFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// [goodTotalRatioThreshold] Criterion that describes a window as good if its performance is
  /// [metricMeanInRange] Criterion that describes a window as good if the metric's value
  /// [metricSumInRange] Criterion that describes a window as good if the metric's value
  /// [windowPeriod] Duration over which window quality is evaluated, given as a
  SloWindowsBasedSli({
    this.goodBadMetricFilter,
    this.goodTotalRatioThreshold,
    this.metricMeanInRange,
    this.metricSumInRange,
    this.windowPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goodBadMetricFilter': ?goodBadMetricFilter,
      'goodTotalRatioThreshold': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSliGoodTotalRatioThreshold, Map<String, dynamic>>(goodTotalRatioThreshold, (value) => value.toMap()),
      'metricMeanInRange': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSliMetricMeanInRange, Map<String, dynamic>>(metricMeanInRange, (value) => value.toMap()),
      'metricSumInRange': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSliMetricSumInRange, Map<String, dynamic>>(metricSumInRange, (value) => value.toMap()),
      'windowPeriod': ?windowPeriod,
    };
  }

  factory SloWindowsBasedSli.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSli(
      goodBadMetricFilter: (() { final guardedValue = map['goodBadMetricFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goodTotalRatioThreshold: (() { final guardedValue = map['goodTotalRatioThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSliGoodTotalRatioThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricMeanInRange: (() { final guardedValue = map['metricMeanInRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSliMetricMeanInRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricSumInRange: (() { final guardedValue = map['metricSumInRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSliMetricSumInRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowPeriod: (() { final guardedValue = map['windowPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

