// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_windows_based_sli_good_total_ratio_threshold_performance_distribution_cut.dart';
import 'slo_windows_based_sli_good_total_ratio_threshold_performance_good_total_ratio.dart';

class SloWindowsBasedSliGoodTotalRatioThresholdPerformance {
  /// Used when goodService is defined by a count of values aggregated in a
  /// Distribution that fall into a good range. The totalService is the
  /// total count of all values aggregated in the Distribution.
  /// Defines a distribution TimeSeries filter and thresholds used for
  /// measuring good service and total service.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut?>? distributionCut;
  /// A means to compute a ratio of `goodService` to `totalService`.
  /// Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
  /// Must specify exactly two of good, bad, and total service filters.
  /// The relationship goodService + badService = totalService
  /// will be assumed.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio?>? goodTotalRatio;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdPerformance].
  /// [distributionCut] Used when goodService is defined by a count of values aggregated in a
  /// [goodTotalRatio] A means to compute a ratio of `goodService` to `totalService`.
  const SloWindowsBasedSliGoodTotalRatioThresholdPerformance({
    this.distributionCut,
    this.goodTotalRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionCut': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut, Map<String, dynamic>>(distributionCut, (value) => value.toMap()),
      'goodTotalRatio': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio, Map<String, dynamic>>(goodTotalRatio, (value) => value.toMap()),
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdPerformance.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdPerformance(
      distributionCut: (() { final guardedValue = map['distributionCut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goodTotalRatio: (() { final guardedValue = map['goodTotalRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
