// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final pulumi.Input<String?>? metric;
  /// Target value for Read Pool Auto Scale.
  final pulumi.Input<double?>? targetValue;

  /// Creates a new [DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric].
  /// [metric] Metric name for Read Pool Auto Scale.
  /// [targetValue] Target value for Read Pool Auto Scale.
  const DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric({
    this.metric,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?metric,
      'targetValue': ?targetValue,
    };
  }

  factory DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric(
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetValue: (() { final guardedValue = map['targetValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
