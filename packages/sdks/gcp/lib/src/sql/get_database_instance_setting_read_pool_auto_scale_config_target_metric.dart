// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final pulumi.Input<String> metric;
  /// Target value for Read Pool Auto Scale.
  final pulumi.Input<double> targetValue;

  /// Creates a new [GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric].
  /// [metric] Metric name for Read Pool Auto Scale.
  /// [targetValue] Target value for Read Pool Auto Scale.
  const GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric({
    required this.metric,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'targetValue': targetValue,
    };
  }

  factory GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric(
      metric: pulumi.Input.fromValue(map['metric'] as String),
      targetValue: pulumi.Input.fromValue(map['targetValue'] as double),
    );
  }
}

