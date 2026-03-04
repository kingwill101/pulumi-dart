// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_windows_based_sli_good_total_ratio_threshold_basic_sli_performance.dart';
import 'slo_windows_based_sli_good_total_ratio_threshold_performance.dart';

class SloWindowsBasedSliGoodTotalRatioThreshold {
  /// Basic SLI to evaluate to judge window quality.
  /// Structure is documented below.
  final pulumi.Input<
    SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance
  >?
  basicSliPerformance;

  /// Request-based SLI to evaluate to judge window quality.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliGoodTotalRatioThresholdPerformance>?
  performance;

  /// If window performance &gt;= threshold, the window is counted
  /// as good.
  final pulumi.Input<double>? threshold;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThreshold].
  /// [basicSliPerformance] Basic SLI to evaluate to judge window quality.
  /// [performance] Request-based SLI to evaluate to judge window quality.
  /// [threshold] If window performance &gt;= threshold, the window is counted
  SloWindowsBasedSliGoodTotalRatioThreshold({
    this.basicSliPerformance,
    this.performance,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSliPerformance':
          ?pulumi.Input.mapOptionalInputValue<
            SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance,
            Map<String, dynamic>
          >(basicSliPerformance, (value) => value.toMap()),
      'performance':
          ?pulumi.Input.mapOptionalInputValue<
            SloWindowsBasedSliGoodTotalRatioThresholdPerformance,
            Map<String, dynamic>
          >(performance, (value) => value.toMap()),
      'threshold': ?threshold,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThreshold.fromMap(
    Map<String, dynamic> map,
  ) {
    return SloWindowsBasedSliGoodTotalRatioThreshold(
      basicSliPerformance: (() {
        final guardedValue = map['basicSliPerformance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      performance: (() {
        final guardedValue = map['performance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SloWindowsBasedSliGoodTotalRatioThresholdPerformance.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
