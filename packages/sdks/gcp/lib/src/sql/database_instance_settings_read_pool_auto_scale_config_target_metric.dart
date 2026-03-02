// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final pulumi.Input<String>? metric;
  /// Target value for Read Pool Auto Scale.
  final pulumi.Input<double>? targetValue;

  /// Creates a new [DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric].
  /// [metric] Metric name for Read Pool Auto Scale.
  /// [targetValue] Target value for Read Pool Auto Scale.
  DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric({
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
      metric: map['metric'] == null ? null : (map['metric']! as String).input(),
      targetValue: map['targetValue'] == null ? null : (map['targetValue']! as double).input(),
    );
  }
}

