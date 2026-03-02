// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_sli.dart';
import 'request_based_sli.dart';

/// A PerformanceThreshold is used when each window is good when that window has a sufficiently high performance.
class PerformanceThreshold {
  /// BasicSli to evaluate to judge window quality.
  final pulumi.Input<BasicSli>? basicSliPerformance;
  /// RequestBasedSli to evaluate to judge window quality.
  final pulumi.Input<RequestBasedSli>? performance;
  /// If window performance >= threshold, the window is counted as good.
  final pulumi.Input<double>? threshold;

  /// Creates a new [PerformanceThreshold].
  /// [basicSliPerformance] BasicSli to evaluate to judge window quality.
  /// [performance] RequestBasedSli to evaluate to judge window quality.
  /// [threshold] If window performance >= threshold, the window is counted as good.
  PerformanceThreshold({
    this.basicSliPerformance,
    this.performance,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSliPerformance': ?pulumi.Input.mapOptionalInputValue<BasicSli, Map<String, dynamic>>(basicSliPerformance, (value) => value.toMap()),
      'performance': ?pulumi.Input.mapOptionalInputValue<RequestBasedSli, Map<String, dynamic>>(performance, (value) => value.toMap()),
      'threshold': ?threshold,
    };
  }

  factory PerformanceThreshold.fromMap(Map<String, dynamic> map) {
    return PerformanceThreshold(
      basicSliPerformance: map['basicSliPerformance'] == null ? null : (BasicSli.fromMap((map['basicSliPerformance']! as Map).cast<String, dynamic>())).input(),
      performance: map['performance'] == null ? null : (RequestBasedSli.fromMap((map['performance']! as Map).cast<String, dynamic>())).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as double).input(),
    );
  }
}

