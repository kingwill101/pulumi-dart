// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final pulumi.Input<String> metric;
  /// Target value for Read Pool Auto Scale.
  final pulumi.Input<double> targetValue;

  /// Creates a new [GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric].
  /// [metric] Metric name for Read Pool Auto Scale.
  /// [targetValue] Target value for Read Pool Auto Scale.
  const GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric({
    required this.metric,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'targetValue': targetValue,
    };
  }

  factory GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric(
      metric: pulumi.Input.fromValue(map['metric'] as String),
      targetValue: pulumi.Input.fromValue(map['targetValue'] as double),
    );
  }
}
