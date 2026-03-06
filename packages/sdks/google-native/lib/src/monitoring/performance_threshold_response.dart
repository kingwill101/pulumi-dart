// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_sli_response.dart';
import 'request_based_sli_response.dart';

/// A PerformanceThreshold is used when each window is good when that window has a sufficiently high performance.
class PerformanceThresholdResponse {
  /// BasicSli to evaluate to judge window quality.
  final pulumi.Input<BasicSliResponse> basicSliPerformance;
  /// RequestBasedSli to evaluate to judge window quality.
  final pulumi.Input<RequestBasedSliResponse> performance;
  /// If window performance &gt;= threshold, the window is counted as good.
  final pulumi.Input<double> threshold;

  /// Creates a new [PerformanceThresholdResponse].
  /// [basicSliPerformance] BasicSli to evaluate to judge window quality.
  /// [performance] RequestBasedSli to evaluate to judge window quality.
  /// [threshold] If window performance &gt;= threshold, the window is counted as good.
  const PerformanceThresholdResponse({
    required this.basicSliPerformance,
    required this.performance,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSliPerformance': pulumi.Input.mapInputValue<BasicSliResponse, Map<String, dynamic>>(basicSliPerformance, (value) => value.toMap()),
      'performance': pulumi.Input.mapInputValue<RequestBasedSliResponse, Map<String, dynamic>>(performance, (value) => value.toMap()),
      'threshold': threshold,
    };
  }

  factory PerformanceThresholdResponse.fromMap(Map<String, dynamic> map) {
    return PerformanceThresholdResponse(
      basicSliPerformance: pulumi.Input.fromValue(BasicSliResponse.fromMap((map['basicSliPerformance']! as Map).cast<String, dynamic>())),
      performance: pulumi.Input.fromValue(RequestBasedSliResponse.fromMap((map['performance']! as Map).cast<String, dynamic>())),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
    );
  }
}

